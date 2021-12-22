module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      backgroundImage: {
        'mock-up': "url('../images/Logo_mockup.jpg')",
      },
      height: {
        '128': '36rem',
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [require('daisyui'),],
  daisyui: {
    styled: true,
    themes: true,
    base: true,
    utils: true,
    logs: true,
    rtl: false,
  },
}
