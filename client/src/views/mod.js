const button= document.querySelector('#signup');
const modalBg= document.querySelector('.modal-background');
const modal = document.querySelector('.modal');

signupButotn.addEventListener('click', () => {
modal.classList.add('is-active')
});

modalBg.addEventListener('click', () =>{
modal.classList.remove('is-active')
});