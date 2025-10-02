<template>
    <div class="grid grid-cols-1 sm:grid-cols-2 px-20 gap-4">
      <div v-for="event in events" :key="event.id" class="aspect-square">
        <img
          :src="event.image"
          alt=""
          class="w-full h-full object-cover rounded-md"
        />
      </div>
    </div>
  </template>
  
<script setup lang="ts">
const events = [
    {
        image:'/events/event1.JPG'
    },
    {
        image:'/events/event2.JPG'
    },{
        image:'/events/event3.JPG'
    },{
        image:'/events/event4.JPG'
    },{
        image:'/events/event5.JPG'
    },{
        image:'/events/event6.JPG'
    }]
</script>
