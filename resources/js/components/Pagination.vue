<style lang="scss">
.pagination {
    justify-content: flex-end !important;
    .page-stats {
        align-items: center;
        margin-right: 5px;
    }
    i {
        color: #3273dc !important;
    }
    nav>a{
        color:#fff !important;
    }
}
</style>
<template>
    <nav class="pagination" v-if="!client">
        <span class="page-stats">{{pagination.from}} - {{pagination.to}} of {{pagination.total}}</span>

        

        <a v-if="pagination.prevPageUrl" class=" btn btn-primary pagination-previous" @click="$emit('prev');">
            <span style="color:white;">Prev</span>
        </a>

        <a class="btn btn-default pagination-previous" v-else :disabled="true">
           <span style="color:black;">Prev</span>
        </a>

        <a v-if="pagination.nextPageUrl" class="btn btn-primary pagination-next" @click="$emit('next');">
            <span style="color:white;">Next</span>
        </a>
        <a class="btn btn-default pagination-next" v-else :disabled="true">
            <span style="color:black;">Next</span>
        </a>
    </nav>

    <nav class="pagination" v-else>
        <span class="page-stats">
            {{pagination.from}} - {{pagination.to}} of {{filtered.length}}
            <span v-if="filtered.length < pagination.total">(filtered from {{pagination.total}} total entries)</span>
        </span>
        <a v-if="pagination.prevPage" class="btn btn-primary  pagination-previous" @click="$emit('prev');">
            <span style="color:white;">Prev</span>
        </a>
        <a class="btn btn-primary  pagination-previous" v-else :disabled="true">
           <span style="color:white;">Prev</span>
        </a>

        <a v-if="pagination.nextPage" class="btn btn-primary  pagination-next" @click="$emit('next');">
            <span style="color:white;">Next</span>
        </a>
        <a class="btn btn-primary pagination-next" v-else :disabled="true">
            <span style="color:white;">Next</span>
        </a>
    </nav>
</template>

<script>
    export default {
        props: ['pagination', 'client', 'filtered']
    }
</script>