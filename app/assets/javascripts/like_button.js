document.addEventListener("DOMContentLoaded", function () {
  const posts = document.querySelectorAll(".post-container");
  posts.first.dataset.ids
  posts.forEach(el => {
    console.log(el.dataset.ids)

    
    // const mugButton = el.querySelector(".mug-button");
    // const unmugButton = el.querySelector(".unmug-button");

    // console.log('like button js')

    // mugButton.forEach(btn => {
    //   btn.addEventListener("click", e => {
    //   console.log('mugged')
      
    //   e.preventDefault();
    //   });
    // });
  });
});

// document.addEventListener("DOMContentLoaded", function () { // DomContentLoaded means start to do belowe code after app loaded
//   const btn = document.querySelectorAll(".mug"); // get the button element from index.view it will be more than one each post has mug and unmug button so we need to use queryselectorAll
//   btn.forEach((el) => { //then we need to loop all post element
//     el.addEventListener("click", (e) => { //addevent which means when we click
//       let count = 0; //created count variable and assign to 0 by default
//       if (e.target.value === "Mug!") { //e.target = where you click (if value is mug)
//         e.target.value = "Unmug"; //  change the button text content to unmug

//         if (count <= 1) {  //singular, plural settings
//           count++; //everytime when we click mug count will increase by 1
//           document.querySelector(".count").textContent = `${count} mug!`; //if count is smaller than 1 it will return mug which is 1 mug
//         } else {
//           document.querySelector(".count").textContent = `${count} mugs!`; //if our post already liked more than 1 times count is  more than 1 so return mugs not mug
//         }
//       } else if (e.target.value === "Unmug") {  //e.target = where you click (if value is unmug)
//         e.target.value = "Mug!"; // change the button text content to mug
//         count = 0; //there is an bug in here maybe you can help me to fix, this should be count -- not count = 0
//         document.querySelector(".count").textContent = `${count} mug!`; //number of mug after unmug
//       }
//       e.preventDefault();  // DO NOT REFRESH PAGE ATER CLICK
//     });
//   });