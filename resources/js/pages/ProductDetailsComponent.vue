<template>
 <main> 
<div v-if="message" class="shadow-md overflow-hidden m-4 bg-green-200 py-3 px-1">
    <div class="row mx-2">
        {{ message }} 
    </div>
 </div>
 <div class="bg-white shadow-md overflow-hidden m-4">   
    <div class="md:flex">
        <div class="md:flex-shrink-0">
            <img class="h-48 w-full object-cover md:w-48" :src="product.image" alt="Man looking at item at a store">
        </div>
        <div class="p-8" v-if="product">
            <h1 class="text-xl font-bold">{{ product.name }}</h1>
            <h1 class="font-bold text-xl">{{ product.price | showPrice }} </h1>
            <button @click="addToCart(product.id)" class="bg-gray-800 p-1 rounded-full text-white hover:text-white focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-offset-gray-800 focus:ring-white">
              <span class="sr-only"></span>
                <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z" />
                </svg>
            </button> <span class="font-bold">Add to cart</span>
            <div v-html="product.description"></div>
        </div>
        <div class="flex items-center justify-between px-4 py-2 bg-gray-900"></div>
    </div>
</div>

 </main>
</template>
<script>
var addToCartUrl = '/api/add-to-cart'
export default ({
    name: 'ProductDetailsComponent',
    props: ['user'],
    mounted() {
        axios.get('/api/product/' + this.user.id).
        then((response) => {
            this.product = response.data;
        }, (error)=> {
            console.log(error)
        })
    },
    data: () => {
        return {
            'product': null,
            'message': null
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
            }).catch((error) => {
                console.log(error)
            })
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
    }
})
</script>
