<script setup lang="ts">
import { Link } from "@inertiajs/vue3";
import {
  Facebook,
  Twitter,
  Linkedin,
  Instagram,
  Youtube,
  Phone,
  Mail,
} from "lucide-vue-next";

// Navigation links data
const quickLinks = [
  { name: "Home", href: "/" },
  { name: "Contact", href: "/contact" },
  // { name: "Services", href: "#" },
  // { name: "Industries", href: "#" },
  // { name: "Careers", href: "#" },
];
</script>

<template>
  <footer class="bg-[#001F35] text-white relative">
    <!-- Top SVG Parabolic Curve -->

    <svg
      class="absolute top-0 left-0 w-full h-16 z-10"
      viewBox="0 0 100 40"
      preserveAspectRatio="none"
    >
      <path d="M0,0 Q50,30 100,0 L100,0 L0,0 Z" fill="white" class="" />
    </svg>

    <svg
      class="absolute top-0 left-0 w-full h-16 z-10"
      viewBox="0 0 100 40"
      preserveAspectRatio="none"
    >
      <path
        d="M0,0 Q50,60 100,0 L100,0 L0,0 Z"
        fill="white"
        class="hidden sm:block"
      />
    </svg>

    <!-- Main Footer Content -->
    <div class="container max-w-6xl mx-auto px-4 md:pt-20 pt-18 pb-8">
      <div
        class="grid grid-cols-1 md:grid-cols-3 items-center justify-between gap-8"
      >
        <!-- Left Column - Company Information -->
        <div class="space-y-4">
          <!-- Logo and Company Name -->
          <div class="space-y-1">
            <img
              src="/images/logo.JPG"
              alt="Ascenza Logo"
              class="h-[150px] w-[140px] rounded-full"
            />
            <!-- Description -->
            <p
              
              class="text-white text-xl font-zain-extra-bold"
            >UTSAWAM
            </p>

            <p
              class="text-gray-300 text-sm leading-relaxed"
            >
              Plan Events and Beautiful Gifts
            </p>
          </div>

          <!-- Contact Information -->
          <div class="grid grid-cols-2 gap-3">
            <Link
              href="/#"
              class="flex items-center space-x-3 hover:opacity-80 transition-opacity cursor-pointer"
            >
              <div
                class="w-8 h-8 bg-white rounded-full flex items-center justify-center"
              >
                <Phone class="w-5 h-5 text-gray-800" />
              </div>
              <span class="text-sm text-gray-300 font-zain-semibold">+91 95057 34599</span>
            </Link>
            <a
              href="/#"
              class="flex items-center space-x-3 hover:opacity-80 transition-opacity cursor-pointer"
            >
              <div
                class="w-8 h-8 bg-white rounded-full flex items-center justify-center flex-shrink-0"
              >
                <Mail class="w-5 h-5 text-gray-800 " />
              </div>
              <span class="text-sm text-gray-300 font-zain-semibold">madhanmohan1311@gmail.com</span>
            </a>
          </div>

          <!-- Social Media Icons -->
          <div class="flex space-x-3">
            <a
              href="https://www.instagram.com/utsawamofficial"
              target="_blank"
              class="w-10 h-10 cursor-pointer bg-white/15 rounded-full flex items-center justify-center hover:text-[#0F1C2D] transition-colors"
            >
              <Instagram class="w-5 h-5" />
          </a>
            <!-- <a
              href="/#"
              target="_blank"
              class="w-10 h-10 cursor-pointer bg-white/15 rounded-full flex items-center justify-center hover:text-[#0F1C2D] transition-colors"
            >
              <Linkedin class="w-5 h-5" />
            </a> -->
            <a
              href="https://www.youtube.com/@akhilthevibes"
              target="_blank"
              class="w-10 h-10 cursor-pointer bg-white/15 rounded-full flex items-center justify-center hover:text-[#0F1C2D] transition-colors"
            >
              <Youtube class="w-5 h-5" />
            </a>
            <!-- <a
              href="/#"
              target="_blank"
              class="w-10 h-10 cursor-pointer bg-white/15 rounded-full flex items-center justify-center hover:text-[#0F1C2D] transition-colors"
            >
              <Facebook class="w-5 h-5" />
            </a> -->
            <!-- <a
              href="/#"
              target="_blank"
              class="w-10 h-10 cursor-pointer bg-white/15 rounded-full flex items-center justify-center hover:text-[#0F1C2D] transition-colors"
            >
              <Twitter class="w-5 h-5" />
            </a> -->
          </div>
        </div>

        <!-- Middle Column - Quick Links -->
        <div class="space-y-6 lg:pl-20 md:pt-4 pt-0">
          <h3 class="text-xl font-zain-bold text-white">QUICK LINKS</h3>
          <nav class="space-y-3">
            <a
              v-for="link in quickLinks"
              :key="link.name"
              :href="link.href"
              class="block text-gray-300 hover:text-white transition-colors text-sm"
            >
              {{ link.name }}
            </a>
          </nav>
        </div>

        <!-- Right Column - Location -->
        <div class="space-y-4">
          <h3 class="text-xl font-zain-bold text-white">LOCATION</h3>
          <div class="space-y-4">
            <p class="text-gray-300 text-xs font-zain-semibold leading-relaxed">
              Kukatpally 
            </p>
            <!-- Interactive Map -->
            <div class="w-full h-48 rounded-lg overflow-hidden">
              <iframe
                 src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3830.0623510568566!2d78.40467071251042!3d17.51105124232108!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb91b6cc333121%3A0x10587ba271794817!2sUTSAWAM!5e0!3m2!1sen!2sin!4v1696151139536!5m2!1sen!2sin"
                width="100%"
                height="100%"
                style="border: 0"
                allowfullscreen=""
                loading="lazy"
                referrerpolicy="no-referrer-when-downgrade"
                title="Ascenza Global Infra Care Location"
              ></iframe>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Bottom Copyright Section -->
    <div class="border-t border-gray-600">
      <div class="container max-w-6xl mx-auto px-4 py-6">
        <div
          class="flex flex-col md:flex-row justify-between items-center space-y-2 md:space-y-0"
        >
          <p class="text-gray-300 text-sm text-white">
            Copyright © {{ new Date().getFullYear() }} Utsawam
            . All Rights Reserved
          </p>
          <p class="text-gray-300 text-sm text-white">
            Developed by
            <a href="https://uxcrafts.com" class="text-white font-zain-semibold"
              >Utsawam</a
            >
          </p>
        </div>
      </div>
    </div>
  </footer>
</template>