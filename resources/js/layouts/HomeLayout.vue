<template>
    <AppHeader/>
    <slot/>
    <AppFooter/>
    <Whatsapp/>

    </template>
    <script setup lang="ts">
    import AppHeader from '@/components/Home/AppHeader.vue';
    import AppFooter from '@/components/Home/AppFooter.vue';
import Whatsapp from '@/components/Home/Whatsapp.vue';
</script>