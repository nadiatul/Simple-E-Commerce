<template>
 <main>
<div v-if="message" class="shadow-md overflow-hidden m-4 bg-green-200 py-3 px-1">
    <div class="row mx-2">
        {{ message }}
    </div>
 </div>
 <div class="bg-white shadow-md overflow-hidden m-4" v-if="product">
    <div class="md:flex">
        <div class="md:flex-shrink-0">
            <img class="h-48 w-full object-cover md:w-48" :src="product.image">
        </div>
        <div class="p-8" v-if="product">
            <h1 class="text-xl font-bold">{{ product.name }}</h1>
            <h1 class="font-bold text-xl">{{ product.price | showPrice }} </h1>
            <button @click="addToCart(product.id)" class="btn btn-success">
             Add to cart
            </button>
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
    props: ['user','productId'],
    mounted() {
        axios.get('/api/product/' + this.productId).
        then((response) => {
            this.product = response.data;
        }, (error)=> {
            console.log(error)
        })
        console.log('productId', this.productId);
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
