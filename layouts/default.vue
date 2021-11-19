
<template>
  <div class="w-full min-h-screen flex flex-col justify-start">
    <div class="mb-10 sticky top-0 z-50"><SiteNavigation /></div>
    <main class="bg-white mb-auto">
        
        <slot />
    </main>
    <div class="mt-auto">
        <SiteFooter />
    </div>
  </div>
</template>

