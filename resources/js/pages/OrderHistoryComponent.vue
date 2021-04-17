<template>
 <main>
    <div class="overflow-hidden">
        <div class="container mx-auto mt-10">
            <h3 class="font-bold my-2 text-left">Order Number</h3>
            <p class="my-2 text-left">Placed on 27 Mar 2021</p>
               <table class="table table-responsive">
                <thead>
                    <th>No</th>
                    <th>Items</th>
                    <th>Price</th>
                    <th>Qty</th>
                    <th>Total</th>
                    <th>Status</th>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>
                            <img class="img-fluid img-thumbnail w-25" src="https://images.unsplash.com/photo-1593642702821-c8da6771f0c6?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=889&q=80">
                        </td>
                        <td>RM 2,000.00</td>
                        <td>1</td>
                        <td>RM 2,000.00</td>
                        <td>Delivered</td>
                    </tr>
                </tbody>
               </table>
                <div class="text-right">
                <p>Subtotal: RM 2,000</p>
                <p>Shipping Fees: RM 2,000</p>
                <p>Discount: RM 2,000</p>
                <p class="font-bold">Total: RM 2,000</p>
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
