
document.getElementById("boostForm").addEventListener("submit", function (e) {
  e.preventDefault();

  const platform = document.getElementById("platform").value;
  const postLink = document.getElementById("post").value;
  const boostTime = document.getElementById("boostTime").value;

  // You can add API call to backend here
  // Example: fetch("http://localhost:3000/api/boost", {
  //   method: "POST",
  //   headers: { "Content-Type": "application/json" },
  //   body: JSON.stringify({ platform, postLink, boostTime }),
  // });

  alert(`Boosting post: ${postLink} on ${platform} for ${boostTime} minutes!`);
  this.reset();
});

