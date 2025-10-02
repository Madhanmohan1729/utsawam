<script setup lang="ts">
import {
  Phone,
  MapPin,
  Mail,
  Instagram,
  Linkedin,
  Dribbble,
  Facebook,
  Twitter,
  Youtube,
  MessageCircle,
} from "lucide-vue-next";
import { useForm } from "@inertiajs/vue3";
import HomeLayout from "@/layouts/HomeLayout.vue";
import Button from "@/components/ui/button/Button.vue";



  const formData = useForm({
    name:'',
    phone:'',
    email:'',
    subject:'',
    description:''
  })

const handleSubmit = async (event) => {
  const whatsappNumber = '919505734599'; // Replace with your WhatsApp number (country code + number, no '+' or dashes)

  event.preventDefault();

  const message = `
Name: ${formData.name}
Phone: ${formData.phone}
Email: ${formData.email}
Subject: ${formData.subject}
Message: ${formData.description}
  `.trim();

  // Encode the message for URL
  const encodedMessage = encodeURIComponent(message);

  // WhatsApp URL format
  const whatsappUrl = `https://wa.me/${whatsappNumber}?text=${encodedMessage}`;

  // Open WhatsApp
  window.open(whatsappUrl, '_blank');
};
</script>

<template>
    <HomeLayout>

  <div class="mt-4 lg:px-0 max-w-6xl mx-auto">
    <div class="gap-6 grid grid-cols-1 lg:grid-cols-10">
      <!-- Contact Form Section -->
      <div class="bg-white shadow-lg rounded-xl p-4 md:p-8 lg:col-span-7">
        <form @submit="handleSubmit">
          <!-- Header with badge and icon -->
          <div class="flex items-center gap-3 mb-4">
            <!-- <div
              class="bg-blue-100 px-3 py-2 rounded-lg flex items-center gap-2"
            >
              <MessageCircle class="h-5 w-5 text-[#134162]" />
              <h1 class="text-[#134162] font-zain-extra-bold text-lg">
                Send Us a Message
              </h1>
            </div> -->

            <div
              class="flex items-center space-x-3 bg-[#F2FAFF] w-fit px-4 py-2 rounded-full"
            >
              <div class="w-2 h-2 bg-[#134162] rounded-full"></div>
              <h2
                class="text-xl lg:text-2xl font-zain-bold text-[#134162]"
              >
                Send Us a Message
              </h2>
            </div>
          </div>
          <p
            class="mb-6 text-[#666666] font-zain-semi-bold text-base"
          >
            Fill out the form below, and our team will reach out to you at the earliest
          </p>
          <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
            <div>
              <label
                for="name"
                class="block text-[#333333] font-zain-regular mb-2"
              >
                Name
              </label>
              <input
                type="text"
                id="name"
                name="name"
                v-model="formData.name"
                :class="[
                  'border w-full rounded-lg h-10 pl-4 font-zain-regular focus:outline-none focus:border-[#134162]',
                ]"
                placeholder="Name"
              />
              <!-- <div
                v-if="formState.errors.name"
                class="mt-1 text-sm text-red-600"
              >
                {{ formState.errors.name[0] }}
              </div> -->
            </div>

            <div>
              <label
                for="phoneNumber"
                class="block text-[#333333] font-zain-regular mb-2"
                >Phone Number</label
              >
              <input
                type="text"
                id="phoneNumber"
                v-model="formData.phone"
                :class="[
                  'border w-full rounded-lg h-10 pl-4 font-zain-regular focus:outline-none focus:border-[#134162]',
                ]"
                placeholder="+91-9701416696"
              />
              <!-- <div
                v-if="formState.errors.phone"
                class="mt-1 text-sm text-red-600"
              >
                {{ formState.errors.phone[0] }}
              </div> -->
            </div>

            <div>
              <label
                for="email"
                class="block text-[#333333] font-zain-regular mb-2"
              >
                Email
              </label>
              <input
                type="email"
                id="email"
                v-model="formData.email"
                :class="[
                  'border w-full rounded-lg h-10 pl-4 font-zain-regular focus:outline-none focus:border-[#134162]',
                ]"
                placeholder="john123456@gmail.com"
              />
              <!-- <div
                v-if="formState.errors.email"
                class="mt-1 text-sm text-red-600"
              >
                {{ formState.errors.email[0] }}
              </div> -->
            </div>

            <div>
              <label
                for="subject"
                class="block text-[#333333] font-zain-regular mb-2"
              >
                Subject
              </label>
              <input
                type="text"
                id="subject"
                v-model="formData.subject"
                :class="[
                  'border w-full rounded-lg h-10 pl-4 font-zain-regular focus:outline-none focus:border-[#134162]',
                ]"
                placeholder="Enter subject"
              />
              <!-- <div
                v-if="formState.errors.subject"
                class="mt-1 text-sm text-red-600"
              >
                {{ formState.errors.subject[0] }}
              </div> -->
            </div>
          </div>

          <div class="w-full mt-4">
            <label
              for="message"
              class="block text-[#333333] font-zain-regular mb-2"
            >
              Message
            </label>
            <textarea
              id="message"
              v-model="formData.description"
              rows="4"
              :class="[
                'border rounded-lg w-full pl-4 pt-3 font-zain-regular focus:outline-none focus:border-[#134162] resize-none',
              ]"
              placeholder="Type your message here..."
            ></textarea>
            <!-- <div
              v-if="formState.errors.description"
              class="mt-1 text-sm text-red-600"
            >
              {{ formState.errors.description[0] }}
            </div> -->
          </div>

          <div class="flex justify-center md:justify-end mt-6">
            <Button
              type="submit"
              :class="[
                'rounded-lg px-8 py-3 text-white font-zain-regular transition-colors',
              ]"
            >
           
              <span >Send a Message</span>
            </Button>
          </div>
        </form>
      </div>

      <!-- Contact Information Section -->
      <div
        class="bg-[#134162] text-white shadow-lg lg:rounded-3xl p-8 lg:col-span-3"
      >
        <div>
          <!-- Greeting -->
          <div class="mb-4">
            <h2
              class="font-zain-bold text-2xl mb-2"
            >
            Hi Customers
            </h2>
            <p
              class="font-zain-regular text-lg"
            >
            We are Always to Plan Events For You
            </p>
          </div>

          <!-- Contact Information Blocks -->
          <div class="space-y-4 mb-8">
            <!-- Phone -->
            <div class="bg-[#2A5A7A] rounded-lg p-4 flex items-center gap-4">
              <Phone
                class="h-6 w-6 md:h-8 md:w-8 flex-shrink-0 text-white/90"
              />
              <div>
                <div class="font-zain-regular text-sm">Phone</div>
                <div class="font-zain-regular text-sm">
                +91 95057 34599
                </div>
              </div>
            </div>

            <!-- Head Quarters -->
            <div class="bg-[#2A5A7A] rounded-lg p-4 flex items-center gap-4">
              <MapPin
                class="h-6 w-6 md:h-8 md:w-8 flex-shrink-0 mt-1 text-white/90"
              />
              <div>
                <div class="font-zain-regular text-sm">Head Quarters</div>
                <div class="font-zain-regular text-sm">
                  GC64+CPH, Yellambanda Rd, Dattatreya Colony, Yellamma Banda, Jagathgiri Gutta, Hyderabad, Telangana 500072
                </div>
              </div>
            </div>

            <!-- Mail Id -->
            <div class="bg-[#2A5A7A] rounded-lg p-4 flex items-center gap-4">
              <Mail class="h-6 w-6 md:h-8 md:w-8 flex-shrink-0 text-white/90" />
              <div>
                <div class="font-zain-regular text-sm">Mail Id</div>
                <div class="font-zain-regular text-sm">
                    madhanmohan1311@gmail.com
                </div>
              </div>
            </div>
          </div>

          <div class="my-4 w-full text-whit border-t border-white"></div>

          <!-- Social Media Section -->
          <div>
            <h3 class="font-zain-semi-bold text-xl mb-4">Connect with us</h3>
            <div class="flex space-x-3">
              <a
                href="https://www.instagram.com/utsawamofficial/?igsh=MTZ3eXR0dHd0anJpaQ%3D%3D#"
                target="_blank"
                rel="noopener noreferrer"
                class="w-10 h-10 bg-white/15 cursor-pointer rounded-full flex items-center justify-center hover:text-[#0F1C2D] transition-colors"
              >
                <Instagram class="w-5 h-5" />
              </a>
              <!-- <a
                :href="contactmain?.SocialMediaData?.linkedin"
                target="_blank"
                rel="noopener noreferrer"
                class="w-10 h-10 bg-white/15 cursor-pointer rounded-full flex items-center justify-center hover:text-[#0F1C2D] transition-colors"
              >
                <Linkedin class="w-5 h-5" />
              </a> -->
              <a
                href="https://www.youtube.com/@akhilthevibes"
                target="_blank"
                rel="noopener noreferrer"
                class="w-10 h-10 bg-white/15 cursor-pointer rounded-full flex items-center justify-center hover:text-[#0F1C2D] transition-colors"
              >
                <Youtube class="w-5 h-5" />
              </a>
              <a
                :href="contactmain?.SocialMediaData?.facebook"
                target="_blank"
                rel="noopener noreferrer"
                class="w-10 h-10 bg-white/15 cursor-pointer rounded-full flex items-center justify-center hover:text-[#0F1C2D] transition-colors"
              >
                <Facebook class="w-5 h-5" />
              </a>
              <!-- <a
                :href="contactmain?.SocialMediaData?.twitter"
                target="_blank"
                rel="noopener noreferrer"
                class="w-10 h-10 bg-white/15 cursor-pointer rounded-full flex items-center justify-center hover:text-[#0F1C2D] transition-colors"
              >
                <Twitter class="w-5 h-5" />
              </a> -->
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Thank You Modal -->
    <div
      v-if="showThankYouModal"
      class="fixed inset-0 z-50 flex items-center justify-center bg-black/50 p-4"
      @click="showThankYouModal = false"
    >
      <div
        class="bg-white w-[90%] sm:w-[70%] md:w-[50%] lg:w-[35%] p-4 sm:p-6 md:p-8 rounded-lg shadow-xl text-center"
        @click.stop
      >
        <div class="mb-4">
          <svg
            class="w-12 h-12 sm:w-14 sm:h-14 md:w-16 md:h-16 lg:w-20 lg:h-20 mx-auto text-green-500 animate-bounce"
            fill="none"
            stroke="currentColor"
            viewBox="0 0 24 24"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"
            />
          </svg>
        </div>
        <h3
          class="text-lg sm:text-xl md:text-2xl lg:text-3xl font-semibold text-gray-800 mb-2"
        >
          Thank You!
        </h3>
        <p class="text-sm sm:text-base md:text-lg lg:text-xl text-gray-600">
          Our team will contact you soon.
        </p>
      </div>
    </div>
  </div>
</HomeLayout>

</template>