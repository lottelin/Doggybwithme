import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Cool Dog High 5","Just One Click Away"],
    typeSpeed: 40,
    loop: true
  });
}

export { loadDynamicBannerText };
