import type { RouteRecordRaw } from 'vue-router'
import layout from '@/layouts/index.vue'
export const constRoutes: RouteRecordRaw[] = [
  {
    path: '/',
    meta: {
      title: '主页',
    },
    component: layout,
    redirect: '/region',
    children: [
      {
        name: 'region',
        path: '/region',
        component: () =>
          import(/* webpackChunkName: "region" */ '@/pages/region/index.vue'),
        meta: {
          title: '地区排名',
          requiredAuth: false,
        },
      },
      {
        name: 'remark',
        path: '/remark',
        component: () =>
          import(/* webpackChunkName: "remark" */ '@/pages/remark/index.vue'),
        meta: {
          title: '评价排名',
          requiredAuth: false,
        },
      },
      {
        name: 'time-location',
        path: '/time-location',
        component: () =>
          import(
            /* webpackChunkName: "time-location" */ '@/pages/time-location/index.vue'
          ),
        meta: {
          title: '时长分布',
          requiredAuth: false,
        },
      },
    ],
  },
]
