function updateSelectedMonth(select) {
  const selectedMonth = select.options[select.selectedIndex].text;
  const prompt = select.querySelector('option[value=""]');
  prompt.textContent = 'SelectedMonth';
}
