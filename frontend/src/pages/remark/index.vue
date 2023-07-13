<template>
  <div>
    <iframe :src="iframeSrc" width="1000" height="1000"></iframe>
  </div>
</template>

<script lang="ts" setup>
const iframeSrc = ref('')
onMounted(() => {
  iframeSrc.value = 'http://127.0.0.1:8000/remark'
})
</script>

<style lang="sass" scoped></style>
