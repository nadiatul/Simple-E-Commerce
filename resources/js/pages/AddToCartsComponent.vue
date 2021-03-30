<template>
 <main> 
  <h1>Hello world</h1>
 </main>
</template>
<script>
  console.log('hello world');
    // const getCartList = 'api/get-carts/' +this.user.id;
    // window.axios = require('axios');
    export default {
    name: 'AddToCartsComponent',
    props:['user'],
    data () {
      return 'carts';
    },
    mounted: function(){ },
    methods:{
        getList(){
          axios.get(getCartList).then((response)=>{
            console.log(response)
            this.carts = response.data;
          }, (error)=> {
              console.log(error)
          })
        }
    }
}
</script>
