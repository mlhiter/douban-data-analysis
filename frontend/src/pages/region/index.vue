<template>
  <div>
    <iframe :src="iframeSrc" width="1000" height="1000"></iframe>
  </div>
</template>

<script lang="ts" setup>
const iframeSrc = ref('')
// 只会执行一次，之后再点击菜单会从缓存直接拿出来
onMounted(() => {
  iframeSrc.value = 'http://127.0.0.1:8000/region'
})
</script>

<style lang="sass" scoped></style>
