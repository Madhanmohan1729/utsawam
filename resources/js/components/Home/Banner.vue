<script setup lang="ts">
import { ref, computed, onMounted, onBeforeUnmount } from "vue";
import { ArrowLeft, ArrowRight } from "lucide-vue-next";

const bannersData = ref([
    {
        id:1,
        image: '/banners/ban-1.jpg' ,
        title: 'Babu dekh Babu' ,
        buttonText : 'Click Babu'
    },
    {
        id:1,
        image: '/banners/ban-2.jpg' ,
        title: 'Babu dekh Babu' ,
        buttonText : 'Click Babu'
    },
    {
        id:1,
        image: '/banners/ban-3.jpg' ,
        title: 'Babu dekh Babu' ,
        buttonText : 'Click Babu'
    }

])


const currentBannerIndex = ref(0);
const intervalId = ref(null);

const nextBanner = () => {
  if (bannersData.value.length > 0) {
    currentBannerIndex.value =
      (currentBannerIndex.value + 1) % bannersData.value.length;
  }
};

const prevBanner = () => {
  if (bannersData.value.length > 0) {
    currentBannerIndex.value =
      currentBannerIndex.value === 0
        ? bannersData.value.length - 1
        : currentBannerIndex.value - 1;
  }
};

const goToBanner = (index) => {
  if (index >= 0 && index < bannersData.value.length) {
    currentBannerIndex.value = index;
  }
};

onMounted(() => {
  intervalId.value = setInterval(() => {
    nextBanner();
  }, 5000);
});

onBeforeUnmount(() => {
  if (intervalId.value) {
    clearInterval(intervalId.value);
  }
});
</script>

<template>
  <div class="py-0" v-if="bannersData.length > 0">
    <div
      class="relative w-full h-[340px] sm:h-80 md:h-[30rem] lg:h-[30rem] xl:h-[530px] mb-8 md:mb-7 lg:mb-14 z-2"
    >
      <!-- Banner images -->
      <transition-group name="fade" tag="div" class="h-full">
        <div
          v-for="(banner, index) in bannersData"
          :key="banner.id"
          class="absolute top-0 left-0 w-full h-full transition-opacity duration-500"
          :class="{
            'opacity-100 pointer-events-auto': index === currentBannerIndex,
            'opacity-0 pointer-events-none': index !== currentBannerIndex,
          }"
        >
          <img
            v-if="banner.image"
            :src="banner.image"
            :alt="banner.alt"
            class="w-full h-full object-cover"
          />
          <div
            class="absolute flex flex-col gap-4 md:gap-6 lg:gap-6 text-left px-4 py-2 sm:px-6 sm:py-3 md:px-8 md:py-4 lg:px-10 lg:py-5 text-white justify-center items-start left-[5%] top-1/2 transform -translate-y-1/2 w-[90%] sm:w-[80%] md:w-[70%] lg:w-[60%] max-w-2xl"
          >
            <!-- <h1
              v-if="banner.title"
              class="text-2xl md:text-4xl lg:text-4xl font-bold"
            >
              {{ banner.title }}
            </h1>
            <p
              v-if="banner.description"
              class="text-sm sm:text-sm md:text-lg lg:text-xl"
            >
              {{ banner.description }}
            </p> -->
            <!-- <button
              v-if="banner.buttonText"
              class="bg-white cursor-pointer text-gray-900 px-4 py-2 md:px-8 md:py-2 lg:px-8 lg:py-2 rounded-lg text-sm md:text-base lg:text-lg transition-all duration-300 mt-2 md:mt-4 hover:bg-[#134162] hover:text-white"
            >
              {{ banner.buttonText }}
            </button> -->
          </div>
        </div>
      </transition-group>

      <!-- Bottom curve -->
      <div class="absolute bottom-0 left-0 w-full h-24 overflow-hidden">
        <svg
          class="absolute bottom-0 left-0 w-full h-full"
          viewBox="0 0 100 100"
          preserveAspectRatio="none"
        >
          <!-- Small devices -->
          <path
            d="M0,100 Q50,20 100,100 L100,100 L0,100 Z"
            fill="white"
            class="block sm:hidden"
          />
          <!-- Medium and larger devices -->

          <path
            d="M0,100 Q50,-30 100,100 L100,100 L0,100 Z"
            fill="white"
            class="hidden md:block"
          />
          <path
            d="M0,100 Q50,-50 100,100 L100,100 L0,100 Z"
            fill="white"
            class="hidden lg:block"
          />
        </svg>
      </div>

      <!-- Controls -->
      <div
        class="absolute md:bottom-[-8%] lg:bottom-[-6%] bottom-[-12%] left-0 w-full h-24 flex items-center justify-center z-50"
      >
        <div class="flex items-center justify-center space-x-6">
          <!-- Prev -->
          <button
            @click="prevBanner"
            class="md:w-10 w-8 h-8 md:h-10 bg-[#134162] hover:bg-white hover:text-gray-900 hover:border hover:border-gray-900 rounded-full flex items-center justify-center text-white hover:bg-[#0f2f47] transition-colors duration-300"
          >
            <ArrowLeft class="w-5 h-5" />
          </button>

          <!-- Dots -->
          <div v-if="bannersData.length > 0" class="flex space-x-3">
            <button
              v-for="(banner, index) in bannersData"
              :key="banner.id"
              @click="goToBanner(index)"
              class="w-3 h-3 rounded-full transition-all duration-300"
              :class="
                index === currentBannerIndex
                  ? 'bg-[#134162]'
                  : 'bg-gray-300 hover:bg-gray-400'
              "
            ></button>
          </div>

          <!-- Next -->
          <button
            @click="nextBanner"
            class="md:w-10 w-8 h-8 md:h-10 bg-[#134162] hover:bg-white hover:text-gray-900 hover:border hover:border-gray-900 rounded-full flex items-center justify-center text-white hover:bg-[#0f2f47] transition-colors duration-300"
          >
            <ArrowRight class="w-5 h-5" />
          </button>
        </div>
      </div>
    </div>
  </div>

  <!-- Optional fallback when no banners -->
  <div v-else class="text-center text-gray-500 py-10">No banners available</div>
</template>

<style scoped>
.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.5s ease;
  position: absolute;
  width: 100%;
  height: 100%;
}

.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
</style>