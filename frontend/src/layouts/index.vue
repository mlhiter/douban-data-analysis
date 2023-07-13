<template>
  <div class="h-100vh w-100vw bg-#dee2e6 grid place-items-center">
    <n-layout
      content-style="padding: 24px;"
      class="w-6/7 h-4/5 shadow-md rounded-2xl">
      <n-layout-header bordered class="h-60px flex items-center">
        <n-image src="/favicon.svg" class="w-150px"></n-image>
        <div class="text-3xl font-mono">豆瓣电影top250数据分析平台</div>
      </n-layout-header>
      <n-layout has-sider class="h-5/6">
        <n-layout-sider bordered content-style="padding: 24px;">
          <n-menu :options="menuOptions" v-model:value="activeMenuRef" />
        </n-layout-sider>
        <n-layout-content
          content-style="padding: 24px;"
          :native-scrollbar="false">
          <router-view v-slot="{ Component }">
            <transition :duration="200" name="fade-top" mode="out-in">
              <keep-alive>
                <component :is="Component" />
              </keep-alive>
            </transition>
          </router-view>
        </n-layout-content>
      </n-layout>
    </n-layout>
  </div>
</template>

<script lang="ts" setup>
import { MenuOption, NIcon } from 'naive-ui'
import { RouterLink } from 'vue-router'
import { Map as MapIcon, BarChart as RemarkIcon,Time as TimeIcon} from '@vicons/ionicons5'
function renderIcon(icon: Component) {
  return () => h(NIcon, null, { default: () => h(icon) })
}
const menuOptions: MenuOption[] = [
  {
    label: () =>
      h(
        RouterLink,
        {
          to: { path: '/region' },
        },
        { default: () => '地区排名' }
      ),
    key: 'region',
    icon: renderIcon(MapIcon),
  },
  {
    label: () =>
      h(
        RouterLink,
        {
          to: { path: '/remark' },
        },
        { default: () => '评分排名' }
      ),
    key: 'remark',
    icon: renderIcon(RemarkIcon),
  },
  {
    label: () =>
      h(
        RouterLink,
        {
          to: { path: '/time-location' },
        },
        { default: () => '时长分布' }
      ),
    key: 'time-location',
    icon: renderIcon(TimeIcon),
  },
]
// 从 sessionStorage 中获取活跃菜单项的值，如果不存在，则默认为 'region'
const activeMenuRef = ref(sessionStorage.getItem('activeMenu') || 'region')

// 监听活跃菜单项的变化，将新的值存储到 sessionStorage 中
watch(activeMenuRef, (newValue) => {
  sessionStorage.setItem('activeMenu', newValue)
})
</script>

<style lang="sass" scoped></style>
