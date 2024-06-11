document.addEventListener('DOMContentLoaded', function () {
    const ratingForm = document.getElementById('ratingForm');
    if (ratingForm) {
        ratingForm.addEventListener('submit', function (event) {
            event.preventDefault();
            const formData = new FormData(ratingForm);

            fetch('rate_article.php', {
                method: 'POST',
                body: formData
            })
                .then(response => response.json())
                .then(data => {
                    document.getElementById('ratingMessage').textContent = data.message;
                    if (data.success) {
                        updateAverageRating();
                    }
                })
                .catch(error => console.error('Error:', error));
        });
    }

    // iskviesti iskart, kad atnaujint
    updateAverageRating();

    function updateAverageRating() {
        const articleId = document.getElementById('articleId').value;
        fetch(`get_rating.php?article_id=${articleId}`)
            .then(response => response.json())
            .then(data => {
                if (data.average_rating) {
                    document.getElementById('averageRating').textContent = 'Vidutinis įvertinimas: ' + data.average_rating.toFixed(1);
                } else {
                    document.getElementById('averageRating').textContent = 'Šis straipsnis dar neįvertintas.';
                }
            })
            .catch(error => console.error('Error fetching average rating:', error));
    }
});