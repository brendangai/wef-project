let footerElem = document.querySelector('.footer')

if (footerElem) {
    footerElem.innerHTML = /*html*/ `
            <div class="footer-line">
                <hr>
            </div>

            <div class="footer-container">

                <a href="https://www.facebook.com" class="fb-btn">
                    <h3><i class="bi bi-facebook"></i></h1>

                </a>
            </div>
            <div class="footer-container">
                <a href="https://www.instagram.com/" class="ig-btn">
                    <h3><i class="bi bi-instagram"></i></h1>

                </a>
            </div>
            <div class="footer-container">
                <a href="https://www.youtube.com" class="yt-btn">
                    <h3><i class="bi bi-youtube"></i></h1>

                </a>
            </div>
            <div class="footer-container">
                <a href="https://www.github.com" class="gh-btn">
                    <h3><i class="bi bi-github"></i></h1>

                </a>
            </div>
        </div>`
}