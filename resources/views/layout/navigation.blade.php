{{-- NAVIGATION MENU --}}
<div class="navigation-menu d-flex align-items-center">
    <div class="container p-0 d-flex justify-content-evenly" style="height:68px;">
        <div style="align-content:center;">
            <a class="btn btn-lg border-0 px-1 py-0" href="/dashboard">
                <i class="bi bi-house{{ Request::is('dashboard') ? '-fill' : '' }} secondary-color" style="font-size: 1.5rem;"></i>
                <p class="secondary-color p-0 m-0" style="font-size: 10px;">Beranda</p>
            </a>
        </div>
        <div style="align-content:center;">
            <a class="btn btn-lg border-0 px-1 py-0" href="/tukar-poin">
                <i class="bi bi-gift{{ Request::is('tukar-poin') ? '-fill' : '' }} secondary-color" style="font-size: 1.5rem;"></i>
                <p class="secondary-color p-0 m-0" style="font-size: 10px;">Rewards</p>
            </a>
        </div>
        <div style="align-content:center;">
            <a class="btn btn-lg border-0 px-1 py-0" href="/kategori-sampah">
                <i class="bi bi-trash{{ Request::is('kategori-sampah') ? '-fill' : '' }} secondary-color" style="font-size: 1.5rem;"></i>
                <p class="secondary-color p-0 m-0" style="font-size: 10px;">Nabung Sampah</p>
            </a>
        </div>
        <div style="align-content:center;">
            <a class="btn btn-lg border-0 px-1 py-0" href="/edukasi">
                <i class="bi bi-book{{ Request::is('edukasi') ? '-fill' : '' }} secondary-color" style="font-size: 1.5rem;"></i>
                <p class="secondary-color p-0 m-0" style="font-size: 10px;">Edukasi</p>
            </a>
        </div>
        <div style="align-content:center;">
            <a class="btn btn-lg border-0 px-1 py-0" href="/settings" role="button">
                <i class="bi bi-person{{ Request::is('settings') ? '-fill' : '' }} secondary-color" style="font-size: 1.5rem;"></i>
                <p class="secondary-color p-0 m-0" style="font-size: 10px;">Profil</p>
            </a>
        </div>
    </div>
</div>
