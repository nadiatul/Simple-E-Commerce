<template>
 <main>
 <div class="container mx-auto mt-10" v-if="refresh">
    <div class="flex shadow-md my-10">
      <div class="w-3/4 bg-white px-10 py-10">
        <div class="flex justify-between border-b pb-8">
          <h1 class="font-semibold text-2xl">Shopping Cart</h1>
          <h2 class="font-semibold text-2xl" v-if="carts">{{ carts.length }} Items</h2>
        </div>
        <button @click="goToHome()" class="btn btn-info my-3">
          Continue Shopping
        </button>
        <table class="table table-responsive table-bordered">
            <thead>
                <th>No </th>
                <th>Items </th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Total</th>
                <th>Actions</th>
            </thead>
            <tbody>
                <tr v-for="(cart,index) in carts" v-bind:key="cart.id">
                    <td>{{index+1}}</td>
                    <td>
                        <div class="">
                            <img class="w-25" :src="cart.product.image" alt="">
                        </div>
                        <div class="flex flex-col justify-between ml-4 flex-grow">
                            <span class="font-bold text-sm">{{ cart.product.name }}</span>
                        </div>
                    </td>
                    <td>
                        <div class="row">
                            <div class="col">
                                <button class="btn btn-info" @click="descreaseQuantity(index)">-</button>
                            </div>
                            <div class="col">
                                <input class="form-control" type="text" :value="cart.quantity">
                            </div>
                            <div class="col">
                                <button class="btn btn-info" @click="increaseQuantity(index)">+</button>
                            </div>
                        </div>
                    </td>
                    <td>{{ cart.price | price }}</td>
                    <td>{{ cart.total | discount(discountPercentage) | price }}</td>
                    <td> <button class="btn btn-danger" @click="removeCart(cart.id)">Remove</button></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Order Summary :</td>
                    <td v-if="carts">Items Qty({{ carts.length }}) </td>
                    <td>{{ totalItems | price }}</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Shipping Fees</td>
                    <td>RM 10.00</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Total Discount</td>
                    <td>{{ discountPrice | price }}</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Total</td>
                    <td>{{ total | price }}</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><button href="/place-order" class="btn btn-success">Checkout</button></td>
                </tr>
            </tbody>
        </table>
      </div>

      <div id="summary" class="d-none w-1/4 px-8 py-10">
        <h1 class="font-semibold text-2xl border-b pb-8">Order Summary</h1>
        <div class="flex justify-between mt-10 mb-5">
          <span class="font-semibold text-sm uppercase" v-if="carts">Items {{ carts.length }}</span>
          <span class="font-semibold text-sm">{{ totalItems | showPrice }}</span>
        </div>
        <div>
          <label class="font-medium inline-block mb-3 text-sm uppercase">Shipping</label>
          <select class="block p-2 text-gray-600 w-full text-sm">
            <option>Standard shipping - RM 10.00</option>
          </select>
        </div>
        <div class="py-10 d-none">
          <label for="promo" class="font-semibold inline-block mb-3 text-sm uppercase">Promo Code</label>
          <input type="text" id="promo" placeholder="Enter your code" class="p-2 text-sm w-full">
        </div>
        <button class="d-none bg-red-500 hover:bg-red-600 px-5 py-2 text-sm text-white uppercase">Apply</button>
        <div class="border-t mt-8">
          <div class="flex font-semibold justify-between py-6 text-sm uppercase">
            <span>Total cost</span>
            <span>{{ total | showPrice }} </span>
          </div>
        </div>
      </div>
    </div>
  </div>
 </main>
</template>
<script>
  var CartService = require('../services/CartService');
  export default {
    name: 'Cart',
    mounted: function() {
      CartService.getMembershipDiscount(this.user.id).then((response) => {
              this.discountPercentage = response.data.discount_percent;
              this.getList();
      }, (error)=> { console.log(error) } )
    },
    props:['user'],
    data: () => {
      return {
          'carts': null,
          'quantity': [],
          'refresh': true,
          'discountPercentage': null,
          'discountPrice': null,
          'totalPrice': null,
          'totalItems': null,
          'total': null,
        }
    },
    methods: {
      getList() {
        CartService.getCart(this.user.id).then((response) =>{
          this.carts = response.data;
          this.carts.forEach((element, index)=>{
              this.carts[index] = {...element, price: element.product.price,total: element.product.price }
          })
          this.calculateTotal();
        }, (error)=> {
            console.log(error)
        })
      },
      removeCart($id) {
        CartService.deleteCart($id).then((response)=>{
          this.getList()
        }, (error)=> {
            console.log(error)
        })
      },
      increaseQuantity(index){
        this.carts[index].quantity+=1;
        this.calculateTotalItem(index);
        this.calculateTotal(index);
      },
      descreaseQuantity(index){
        this.carts[index].quantity-=1;
        this.calculateTotalItem(index)
        this.calculateTotal(index);
      },
      calculateTotalItem(index) {
          this.carts[index].total = this.carts[index].price * this.carts[index].quantity;
      },
      calculateTotal(index){
        const sumPrice = this.carts.map((e=> e.price ));
        const sumItems = this.carts.map((e=> e.total ));
        this.totalPrice = sumPrice.reduce((sum, x) => Number(sum) + Number(x));
        this.totalItems = sumItems.reduce((sum, x) => Number(sum) + Number(x));
        this.discountPrice = (this.discountPercentage/100) * this.totalItems;
        const shippingFee = 10.00
        this.total = this.totalItems -(this.discountPrice + shippingFee)
      },
      refreshData() {
        this.refresh = false;
        setTimeout(()=>{
            this.refresh = true;
        },10)
      },
      goToHome() {
        window.location.href='/home'
      }
  },
  filters: {
      showPrice: ((value) =>{
        if(value){
          let price = Number(value);
          return (price).toLocaleString('en-MY', {
            style: 'currency',
            currency: 'MYR',
          });
        }
      }),
      discount:((originalPrice, discount) => {
        let discountedPrice = (discount/100) * originalPrice
          return originalPrice - discountedPrice
      })
  }
}
</script>
