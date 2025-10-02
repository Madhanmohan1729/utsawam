<template>
    <a href="https://wa.me/919505734599" class="whatsapp-float" target="_blank">
      <img src="/images/whatsapp-logo.png" alt="WhatsApp" class="whatsapp-icon" />
    </a>
  </template>
  
  <style scoped>
  .whatsapp-float {
    position: fixed;
    bottom: 20px;
    right: 20px;
    z-index: 1000;
  }
  
  .whatsapp-icon {
    width: 70px;
    height: 70px;
    border-radius: 50%;
    transition: transform 0.3s ease-in-out;
  }
  
  .whatsapp-icon:hover {
    transform: scale(1.1);
  }
  
  @media (max-width: 768px) {
    .whatsapp-icon {
      width: 50px;
      height: 50px;
    }
  }
  </style>
  