export default [
  {
    files: ['**/*.js'],
    languageOptions: {
      ecmaVersion: 2021,
      sourceType: 'module'
    },
    rules: {
      semi: 'error',
      quotes: ['error', 'single'],
      indent: ['error', 2],
      'no-unused-vars': 'warn',
      'no-console': 'off'
    }
  }
];
