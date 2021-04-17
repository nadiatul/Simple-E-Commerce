<template>
  <main>
      <div v-if="message" class="shadow-md overflow-hidden m-2 bg-green-200 py-2 px-1">
        <div class="row mx-2">
            {{ message }}
        </div>
      </div>
      <div class="row mx-2">
          <div class="col-md-3">
                <vue-navbar @clickFilter="onClickFilter"/>
          </div>
          <div class="col-md-9">
              <div class="row">
                  <div class="col">
                    <div class="d-inline-block mx-2" v-for="product in products" :key="product.id">
                        <div class="d-block mb-4 h-100">
                            <div class="px-4">
                                <a :href="'/product-details/' + product.id" class="">{{ product.name }}</a>
                            </div>
                            <img class="img-fluid img-thumbnail" :src="product.image">
                            <div class="">
                                <p class="">{{ product.price | discount(discountPercentage) | price }}</p>
                                <button @click="addToCart(product.id)" class="btn btn-success">
                                    Add to cart
                                </button>
                            </div>
                        </div>
                    </div>
                  </div>
              </div>
        </div>
    </div>
  </main>
</template>

<script>

var getProductListUrl = '/api/products-list'
var addToCartUrl = '/api/add-to-cart'
var filterByCategory = '/api/product-category/'
export default ({
    name: 'VueMain',
    mounted: function(){
        axios.get(getProductListUrl).then((response)=>{
            this.products = response.data;
        }, (error)=> {
            console.log(error)
        })

        axios.get(this.getMembershipDiscountUrl)
        .then((response) => {
                this.discountPercentage = response.data.discount_percent;
        }, (error)=> { console.log(error) } )
    },
    props:['user','session'],
    data() {
        return {
            products: null,
            message: null,
            getMembershipDiscountUrl: '/api/get-membership-discount/'+ this.user.id,
            discountPercentage: null
        }
    },
    methods:{
        addToCart(id) {
            axios.post(addToCartUrl, {
                productId: id,
                userId: this.user.id
                })
            .then((response) => {
                this.message = response.data.message;
                setTimeout(()=>{
                    this.message = null;
                }, 3000);
            }).catch((error) => {
                console.log(error)
            })
        },
        onClickFilter(filter) {
            axios.get(filterByCategory + filter.type + '/' + filter.id )
            .then((response) => {
                 this.products = response.data;
            }).catch((error) => {
                console.log(error)
            })
        }
    },
    filters: {
        discount:((originalPrice, discount) => {
          let discountedPrice = (discount/100) * originalPrice
           return originalPrice - discountedPrice;
        })
    }
})
</script>

<style scoped>
img {
    width:300px;
    height: 230px;
}
</style>
