<template>
  <NuxtPage />
</template>

<script lang="ts" setup>
const bullshit = useBullshit()

useHead({
  title: "SKaiBlue",
  meta: [
    { property: "og:type", content: "website" },
    { property: "og:title", content: "SKaiBlue" },
    { property: "og:description", content: bullshit.generate("凱哥", 200) },
    { property: "og:url", content: "https://skaibu.gay/" },
    {
      property: "og:image",
      content:
        "https://cdn.discordapp.com/attachments/912960977249660978/1066005200961286314/skaibu.png",
    },
    { name: "theme-color", content: "#00D6FF" },
  ],
})
</script>
