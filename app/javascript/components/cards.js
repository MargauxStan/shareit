const clickableItemCards = () => {
  const cards = document.querySelectorAll(".item-card");
  if (cards) {
    cards.forEach((card) => {
      card.addEventListener("click", () => {
        console.log(card.dataset.id);
        document.location.href=`/items/${card.dataset.id}`
      })
    });
  };
};

export { clickableItemCards };