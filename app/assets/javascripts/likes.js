//Before javascript I changed index.html.erb abit. because there was condionally rendering on there already. I tried to remove that render, prelikes stuff
// and condidions but it did not work. I got rails error
// Therefore I just put the same button to rails. 

/*
    <% if user_signed_in? %>
      <% pre_like = post.likes.find { |like| like.user_id == current_user.id} %>
      <% if pre_like %>
       <%= button_to 'Mug!', post_likes_path(post), method: :post, :class => 'mug' %>
      <% else %>
        <%= button_to 'Mug!', post_likes_path(post), method: :post, :class => 'mug' %>
      <% end %>
    <% end %>
    <p class ='count'></p> 
*/

document.addEventListener("DOMContentLoaded", function () { // DomContentLoaded means start to do belowe code after app loaded
  const btn = document.querySelectorAll(".mug"); // get the button element from index.view it will be more than one each post has mug and unmug button so we need to use queryselectorAll
  btn.forEach((el) => { //then we need to loop all post element
    el.addEventListener("click", (e) => { //addevent which means when we click
      let count = 0; //created count variable and assign to 0 by default
      if (e.target.value === "Mug!") { //e.target = where you click (if value is mug)
        e.target.value = "Unmug"; //  change the button text content to unmug

        if (count <= 1) {  //singular, plural settings
          count++; //everytime when we click mug count will increase by 1
          document.querySelector(".count").textContent = `${count} mug!`; //if count is smaller than 1 it will return mug which is 1 mug
        } else {
          document.querySelector(".count").textContent = `${count} mugs!`; //if our post already liked more than 1 times count is  more than 1 so return mugs not mug
        }
      } else if (e.target.value === "Unmug") {  //e.target = where you click (if value is unmug)
        e.target.value = "Mug!"; // change the button text content to mug
        count = 0; //there is an bug in here maybe you can help me to fix, this should be count -- not count = 0
        document.querySelector(".count").textContent = `${count} mug!`; //number of mug after unmug
      }
      e.preventDefault();  // DO NOT REFRESH PAGE ATER CLICK
    });
  });
});
