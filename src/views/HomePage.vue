<script setup>
import { ref } from 'vue'
import LinkCard from '@/components/LinkCard.vue'

const profile = ref({
  name: 'Bianca Martinez',
  slogan: 'Student at South Texas College',
  avatar: 'https://api.dicebear.com/9.x/fun-emoji/svg?seed=Valentina',
  links: [
    {
      id: 1,
      title: 'GitHub',
      url: 'https://github.com/beemtz0715-max',
      icon: 'code',
      description: 'Check out my projects',
    },
    {
      id: 2,
      title: 'LinkedIn',
      url: 'https://www.linkedin.com/in/biancamartinez0715/',
      icon: 'briefcase',
      description: 'Connect with me professionally',
    },
  ],
  projects: [
    {
      id: 1,
      title: 'Expense Splitter (Live)',
      url: 'https://expenses-html-458.pages.dev/',
      icon: 'code',
      description: 'A Vue.js app to split expenses among friends',
    },
    {
      id: 2,
      title: 'Expense Splitter (GitHub)',
      url: 'https://github.com/beemtz0715-max/01-ExpensesSplitter',
      icon: 'code',
      description: 'Source code for Expense Splitter Vue app',
    },
  ],
})
</script>

<template>
  <main class="flex min-h-screen flex-col items-center px-4 py-8">
    <!-- Profile Header -->
    <div class="mb-8 flex flex-col items-center text-center">
      <div
        class="mb-4 h-24 w-24 overflow-hidden rounded-full border-4 border-pink-400 shadow-lg shadow-pink-500/20 sm:h-32 sm:w-32"
      >
        <img
          :src="profile.avatar"
          :alt="profile.name"
          class="h-full w-full object-cover"
        />
      </div>
      <h1 class="mb-2 font-display text-2xl font-bold text-pink-800 sm:text-3xl">
        {{ profile.name }}
      </h1>
      <p class="max-w-xs text-pink-600 sm:text-lg">{{ profile.slogan }}</p>
    </div>

    <!-- Link List -->
    <div class="flex w-full max-w-md flex-col gap-4">
      <LinkCard
        v-for="link in profile.links"
        :key="link.id"
        :title="link.title"
        :url="link.url"
        :description="link.description"
        :icon="link.icon"
      />
    </div>

    <!-- Projects Section (Expense Splitter) -->
    <div class="mt-12 w-full max-w-md">
      <h2 class="mb-4 text-xl font-bold text-pink-800">Projects</h2>
      <div class="flex flex-col gap-4">
        <LinkCard
          v-for="project in profile.projects"
          :key="project.id"
          :title="project.title"
          :url="project.url"
          :description="project.description"
          :icon="project.icon"
        />
      </div>
    </div>

    <!-- Navigate to Info -->
    <RouterLink
      to="/info"
      class="mt-8 text-sm text-pink-600 underline-offset-4 transition-colors duration-200 hover:text-pink-800 hover:underline"
    >
      About me →
    </RouterLink>
  </main>
</template>
