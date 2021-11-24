<svelte:head>
    <title>Peak</title>
</svelte:head>

<div class="hero">
    <img class="logo" src="glyph.svg" alt="Logo" />
    <h1>Peak</h1>
    <p>Join today</p>
    <p>peaksmp.org</p>
</div>

<style lang="scss">
    :global(body) {
        margin: 0;
        font-family: system-ui;
    }

    .hero {
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        text-align: center;
        background: linear-gradient(to bottom, #f6f6f6 0%, #fff 100%);
    }

    .hero {
        height: 120vh;
        display: flex;
        background-image: linear-gradient(
                #00000000 60%,
                #3eb0e4
            ),
            url("/screenshots/mountain-goat-wide.webp");
        background-position: center; 
    }

    h1 {
        font-size: 6rem;
        font-weight: bold;
        color: #fff;
        margin-top: 3rem;
    }

    p {
        font-size: 1.5rem;
        font-weight: bold;
        color: #fff;
        margin: 0;
        margin-top: 1rem;
        margin-bottom: 1rem;
    }

    .logo {
        height: 192px;
    }
</style>
