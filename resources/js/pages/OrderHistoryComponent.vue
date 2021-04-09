<template>
 <main> 
    <div class="overflow-hidden">
        <div class="container mx-auto mt-10">
			<div class="bg-white shadow-md my-2 p-3 text-right">
				<h3 class="font-bold my-2 text-left">Order Number</h3>
				<p class="my-2 text-left">Placed on 27 Mar 2021</p>
					<div class="grid grid-cols-5">
					  <div></div>
					  <div class="font-bold">Price</div>
					  <div class="font-bold">Qty</div>
					  <div class="font-bold">Total</div>
					  <div class="font-bold">Status</div>
					</div>				
					<div class="grid grid-cols-5 my-3">
					  <div>
						<img src="https://images.unsplash.com/photo-1593642702821-c8da6771f0c6?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=889&q=80">
					  </div>
					  <div>RM 2,000.00</div>
					  <div>1</div>
					  <div>RM 2,000.00</div>
					  <div>Paid</div>
					</div>
					<div class="grid grid-cols-5 my-3">
					  <div>
						<img src="https://images.unsplash.com/photo-1593642702821-c8da6771f0c6?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=889&q=80">
					  </div>
					  <div>RM 2,000.00</div>
					  <div>1</div>
					  <div>RM 2,000.00</div>
					  <div>Paid</div>
					</div>
				 <div class="text-right">
					<p>Subtotal: RM 2,000</p>
					<p>Shipping Fees: RM 2,000</p>
					<p>Discount: RM 2,000</p>
					<p class="font-bold">Total: RM 2,000</p>
				</div>
			</div>
        </div>
    </div>
 </main>
</template>


<script>

export default {
    name: 'OrderHistoryComponent'
}
</script>
