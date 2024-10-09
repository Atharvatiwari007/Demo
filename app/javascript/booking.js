  document.addEventListener("turbo:load", ()=> {
    const membershipDurationSelect = document.getElementById('membership_duration');
    const startDateField = document.getElementById('start_date');
    const endDateField = document.getElementById('end_date');

    function updateEndDate() {
      const selectedDuration = parseInt(membershipDurationSelect.value);
      const startDate = new Date(startDateField.value);

      if (!isNaN(selectedDuration) && startDate) {
        const endDate = new Date(startDate);
        endDate.setMonth(endDate.getMonth() + selectedDuration); // Add months based on the selected duration
        endDateField.value = endDate.toISOString().split('T')[0]; // Set the end date field to the calculated date
      } else {
        endDateField.value = ''; // Clear the end date if the input is invalid
      }
    }

    membershipDurationSelect.addEventListener('change', updateEndDate);
    startDateField.addEventListener('change', updateEndDate);
  });
