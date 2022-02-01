const menuTeam = () => {
    var team = document.getElementById('team');
    var menu = document.getElementById('menu');
    team.addEventListener("click",openMenu);
    const openMenu = () => {
      menu.style.display = 'flex';
    }
}

export { menuTeam };