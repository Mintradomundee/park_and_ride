import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('parking_lot_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };