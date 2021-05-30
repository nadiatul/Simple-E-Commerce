<template>
  <main>
      <div v-if="message" class="shadow-md overflow-hidden m-2 bg-green-200 py-2 px-1">
        <div class="row mx-2">
            {{ message }}
        </div>
      </div>
      <div class="row">
          <div class="col-md-2">
             <vue-navbar @clickFilter="onClickFilter"/>
          </div>
            <b-card v-for="product in products" :key="product.id"
                :title="product.name"
                :img-src="product.image"
                img-alt="Image"
                img-top
                tag="article"
                style="max-width: 20rem;"
                class="m-3"
            >
                <b-card-text>
                    <p class="">{{ product.price | discount(discountPercentage) | price }}</p>
                </b-card-text>
                <b-button @click="addToCart(product.id)" class="btn btn-success">Add to cart </b-button>
                <b-button :href="'/product-details/' + product.id" variant="primary">Detail</b-button>
            </b-card>
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
