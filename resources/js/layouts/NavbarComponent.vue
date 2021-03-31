<template>
<div>
  <div class="bg-white shadow w-64 my-2">
    <ul class="list-reset">
      <li class="border-b">
        <p href="#" class="border-b-1 block py-4 px-3 text-grey-darker font-bold border-purple hover:bg-grey-lighter border-r-4"
          ><b>Category</b></p>
      </li>
      <li @click="onClickFilter('category', 1)">
        <a class="block p-3 text-grey-darker font-bold border-grey-lighter hover:border-purple-light hover:bg-grey-lighter border-r-4"
          >Laptop</a>
      </li>
      <li @click="onClickFilter('category', 2)">
        <a class="block p-3 text-grey-darker font-bold border-grey-lighter hover:border-purple-light hover:bg-grey-lighter border-r-4"
          >Bag</a>
      </li>
    </ul>    
   </div>
   <div class="bg-white shadow w-64 my-2">
    <ul class="list-reset">
      <li class="border-b">
        <p class="border-b-1 block py-4 px-3 text-grey-darker font-bold border-purple hover:bg-grey-lighter border-r-4"
          ><b>Brand</b></p>
      </li>
      <li @click="onClickFilter('brand', 1)">
        <a class="block p-3 text-grey-darker font-bold border-grey-lighter hover:border-purple-light hover:bg-grey-lighter border-r-4"
          >Dell</a>
      </li>
      <li @click="onClickFilter('brand', 2)">
        <a class="block p-3 text-grey-darker font-bold border-grey-lighter hover:border-purple-light hover:bg-grey-lighter border-r-4"
          >HP</a>
      </li>
    </ul>
  </div>
</div>
</template>
<script>
export default ({
  name: 'NavbarComponent',
  methods:{
    onClickFilter(type, id){
        this.$emit('clickFilter', { type:type, id: id });
    }
  }
});
</script>