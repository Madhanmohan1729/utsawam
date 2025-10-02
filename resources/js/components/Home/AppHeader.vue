<template>
    <div class="lg-screen flex justify-between px-5 py-1  items-center">
          <div>
                <img style="width: 100px;" src="/images/logo.JPG" alt="Logo" class="logo w-20 rounded-full" />
          </div>
          <div class="flex gap-5 ">
                <div class="flex gap-5">
                      <Link  href="/" class="cursor-pointer hover:text-blue-500">
                            Home
                      </Link>
                      <!-- <Link href="/#" class="cursor-pointer hover:text-blue-500">
                            Shops
                      </Link>
                      <Link href="/#" class="cursor-pointer hover:text-blue-500">
                            Menu
                      </Link> -->
                      <!-- <Link href="/#" class="cursor-pointer hover:text-blue-500">
                            About Us
                      </Link> -->
                      <Link href="/contact" class="cursor-pointer hover:text-blue-500">
                            Contact Us
                      </Link>
                </div>

                <!-- <div @click="searchPickles" class="cursor-pointer hover:text-blue-500">
                      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="size-6">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                  d="m21 21-5.197-5.197m0 0A7.5 7.5 0 1 0 5.196 5.196a7.5 7.5 0 0 0 10.607 10.607Z" />
                      </svg>

                </div> -->

          </div>
    </div>
    <div>
          <div class="sm-screen flex justify-between px-5 py-1  items-center">
            <div>
                      <img style="width: 60px;"  src="/images/logo.JPG" alt="Logo" class="logo w-20 rounded-full" />
                </div>
                <div class="flex gap-1 cursor-pointer hover:text-blue-500">
                      <div>
                            <svg @click="openToogle" xmlns="http://www.w3.org/2000/svg" fill="none"
                                  viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-6">
                                  <path stroke-linecap="round" stroke-linejoin="round"
                                        d="M3.75 5.25h16.5m-16.5 4.5h16.5m-16.5 4.5h16.5m-16.5 4.5h16.5" />
                            </svg>
                      </div>


                </div>
                
                <!-- <div @click="searchPickles" class="cursor-pointer hover:text-blue-500">
                      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                            stroke="currentColor" class="size-6">
                            <path stroke-linecap="round" stroke-linejoin="round"
                                  d="m21 21-5.197-5.197m0 0A7.5 7.5 0 1 0 5.196 5.196a7.5 7.5 0 0 0 10.607 10.607Z" />
                      </svg>

                </div> -->

          </div>
          <div v-if="toogle">
                <div class="flex flex-col px-4 gap-3">
                      <Link href="/" class="cursor-pointer hover:text-blue-500">
                            Home
                      </Link>
                      <!-- <Link href="/#" class="cursor-pointer hover:text-blue-500">
                            Shops
                      </Link>
                      <Link href="/#"  class="cursor-pointer hover:text-blue-500">
                            Menu
                      </Link>
                      <Link href="/#" class="cursor-pointer hover:text-blue-500">
                            About Us
                      </Link> -->
                      <Link href="/contact" class="cursor-pointer hover:text-blue-500">
                            Contact Us
                      </Link>
                </div>
          </div>
    </div>
    <hr class=" border-t border-gray-300 my-4" />

</template>
<script setup lang="ts">
import { Link } from '@inertiajs/vue3';
import { ref } from 'vue';

let toogle = ref(false);
const openToogle = () => {
    toogle.value = !toogle.value;
}
</script>
<style scoped>
.lg-screen {
    display: none;
}

@media (min-width: 1024px) {
    .lg-screen {
          display: flex;
    }
}

.sm-screen {
    display: none;
}

@media (max-width: 1024px) {
    .sm-screen {
          display: flex;
    }
}
</style>