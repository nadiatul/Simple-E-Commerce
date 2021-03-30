<template>
 <main> 
    <div class="bg-white shadow-md overflow-hidden m-4">
        <div class="container mx-auto mt-10">
            <table class="table-fixed">
                <thead>
                    <tr>
                    <th class="w-1/2">No</th>
                    <th class="w-1/4">Name</th>
                    <th class="w-1/4">Amount</th>
                    <th class="w-1/4">Quantity</th>
                    <th class="w-1/4">Price</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    <td>Intro to CSS</td>
                    <td>Adam</td>
                    <td>59000</td>
                    <td>1</td>
                    <td>59000</td>
                    </tr>
                    <tr class="bg-blue-200">
                    <td>A Long and Winding Tour of the History of UI Frameworks and Tools and the Impact on Design</td>
                    <td>Adam</td>
                    <td>2</td>
                    <td>2</td>
                    <td>2</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
 </main>
</template>


<script>

export default {
    name: 'OrderHistory'
}
</script>
