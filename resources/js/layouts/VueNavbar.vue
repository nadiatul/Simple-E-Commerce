<template>
    <div class="mt-3 px-2">
        <div class="py-2 border-bottom font-weight-bold">Category </div>
        <b-nav vertical pills class="w-25">
            <b-nav-item class="py-1" @click="onClickFilter('category', 1)">Laptop</b-nav-item>
            <b-nav-item class="py-1"  @click="onClickFilter('category', 2)">Bag</b-nav-item>
        </b-nav>
        <div class="border-top"></div>
        <b-nav vertical class="w-25 sidebar-heading my-2 py-20">
            <b-nav-item class="py-1" @click="onClickFilter('brand', 1)">Dell</b-nav-item>
            <b-nav-item class="py-1"   @click="onClickFilter('brand', 2)">HP</b-nav-item>
        </b-nav>
    </div>
</template>
<script>
export default ({
  name: 'VueNavbar',
  methods: {
    onClickFilter(type, id) {
        this.$emit('clickFilter', { type:type, id: id });
    }
  }
});
</script>
