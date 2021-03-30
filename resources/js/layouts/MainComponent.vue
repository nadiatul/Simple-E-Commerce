<template>
  <main>
      <div v-if="message" class="row mx-2">
        <div class="alert alert-success" role="alert">
            {{ message }}
        </div>
      </div>
      <div class="row mx-2">
          <div class="grid-cols-4">
                <navbar-component/>
          </div>
          <div class="grid-cols-8">
            <div class="inline-block mx-2" v-for="product of products">
                <div class="max-w-xs bg-white shadow-md overflow-hidden my-2">
                    <div class="px-4">
                        <a href="/product-details" class="text-gray-900 font-bold text-3xl">{{ product.name }}</a>
                    </div>
                    <img class="h-60 object-cover mt-2" :src="product.image" alt="NIKE AIR">
                    <div class="flex items-center justify-between px-4 py-2 bg-gray-900">
                        <h1 class="text-gray-200 font-bold text-xl">{{ product.price }}</h1>
                        <button @click="addToCart(product.id)" class="px-3 py-1 bg-yellow-500 text-sm text-gray-900 font-semibold text-white">
                            Add to cart
                        </button>
                    </div>
                </div>            
            </div>
        </div>
    </div>
  </main>
</template>
<script>

window.axios = require('axios');
var getProductListUrl = '/api/products-list'
var addToCartUrl = '/api/add-to-cart'
export default ({
    name: 'MainComponent',
    mounted: function(){
        axios.get(getProductListUrl).then((response)=>{
            console.log(response)
            this.products = response.data;
        }, (error)=> {
            console.log(error)
        })
    },
    props:['user','session'],
    data() {
        return {
            products: null,
            message: null
        }
    },
    methods:{
        addToCart(id) {
        axios.post(addToCartUrl, {
            productId: id, 
            userId: this.user.id
            })
        .then((response) => {
            console.log(response)
            this.message = response.data.message;
            setTimeout(()=>{
                this.message = null;
            }, 3000);
        
                // this.products = response.data;
        }).catch((error) => {
            console.log(error)
        })
        }
    }

})
</script>
