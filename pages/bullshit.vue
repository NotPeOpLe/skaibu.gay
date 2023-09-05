<template>
  <div class="h-screen flex flex-col justify-center items-center bg-slate-900">
    <img src="https://cdn.discordapp.com/attachments/912960977249660978/1066005200961286314/skaibu.png" alt="skaibu" />
    <NuxtLink to="/" class="text-3xl font-bold text-white">SKaiBlue</NuxtLink>
    <div class="text-sm text-white/40">點擊下面廢文即可複製</div>

    <div class="mx-20 my-5 text-white">
      <div class="transition hover:bg-white/5 p-3 rounded cursor-pointer" @click="copy" ref="resultDiv">
        {{ result }}
      </div>
    </div>
    <div>
      <button
        class="transition bg-blue-500 text-white rounded-lg px-2 py-1 hover:bg-blue-600 active:bg-blue-700 select-none"
        @click="refresh">
        刷新
      </button>
    </div>
  </div>
</template>

<script lang="ts" setup>
useHead({
  title: "SKaiBlue",
  meta: [
    { property: "og:type", content: "website" },
    { property: "og:title", content: "SKaiBlue" },
    { property: "og:description", content: "關於凱哥的幹話生產器" },
    { property: "og:url", content: "https://skaibu.gay/" },
    {
      property: "og:image",
      content:
        "https://cdn.discordapp.com/attachments/912960977249660978/1066005200961286314/skaibu.png",
    },
    { name: "theme-color", content: "#00D6FF" },
  ],
})

const bullshit = useBullshit()
const result = ref("等我一下...")
const resultDiv = ref()

function refresh() {
  result.value = bullshit.generate("凱哥", 30)
}

async function copy() {
  try {
    await navigator.clipboard.writeText(result.value);
  } catch (err) {
    console.error('Failed to copy: ', err);
  }
}

onMounted(() => refresh())
</script>
