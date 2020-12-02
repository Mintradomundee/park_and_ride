import "jquery-bar-rating";
import $ from 'jquery';

const initRatingStar = () => {
  $('#review_rating_star').barrating({
    theme: 'css-stars'
  });
}
export { initRatingStar };
