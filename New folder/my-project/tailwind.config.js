module.exports = {
  content: [
    "./index.html",
    "./src/**/*.{vue,js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      backgroundImage: {
        'mock-up': "url('../images/Logo_mockup.jpg')",
      },
      screens:{
        'xxs': '540px',
        'xxl':'1920px',
      },
      height: {
        '130':'38rem',
        '128':'36rem',
        '100':'25rem',
        '105':'28rem',
        '110':'30rem',
        '120':'32rem',
        '125':'34rem',
      },
      spacing:{
        '140':'40rem',
        '144':'44rem',
        '145':'50rem',
        '130':'38rem',
        '128':'36rem',
        '100':'25rem',
        '101':'26rem',
        '105':'28rem',
        '110':'30rem',
        '115':'28.5rem',
        '116':'28.6rem',
        '120':'32rem',
        '88': '23rem',
      }
    },
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