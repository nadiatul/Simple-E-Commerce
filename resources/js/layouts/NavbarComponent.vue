<template>
    <div class="bg-light px-4 border-right" id="sidebar-wrapper">
      <div class="sidebar-heading my-2 py-20">Category </div>
      <div class="list-group list-group-flush">
        <a href="#" class="list-group-item list-group-item-action bg-light" @click="onClickFilter('category', 1)">Laptop</a>
        <a href="#" class="list-group-item list-group-item-action bg-light" @click="onClickFilter('category', 2)">Bag</a>
    </div>
    <div class="sidebar-heading my-2 py-2 mt-3">Brands </div>
      <div class="list-group list-group-flush">
        <a href="#" class="list-group-item list-group-item-action bg-light" @click="onClickFilter('brand', 1)">Dell</a>
        <a href="#" class="list-group-item list-group-item-action bg-light" @click="onClickFilter('brand',2)">HP</a>
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
