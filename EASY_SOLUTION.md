# 🎮 EN KOLAY ÇÖZÜM - Build Olmadan Kullanım

## Seçenek 1: GitHub Actions (ÖNERİLEN) ⭐

### Adım 1: GitHub'a Yükle
```powershell
# PowerShell'de çalıştır:
cd "c:\Users\death\OneDrive\Desktop\TClient-master"

# Git var mı kontrol et
git --version

# Eğer git yoksa: https://git-scm.com/download/win
```

### Adım 2: Repository Oluştur
1. https://github.com/new
2. Repository adı: `TClient-Avoid`
3. Public seç
4. Create!

### Adım 3: Push Et
```powershell
git init
git add .
git commit -m "Avoid Hammers & Freeze added"
git branch -M main
git remote add origin https://github.com/KULLANICI_ADIN/TClient-Avoid.git
git push -u origin main
```

### Adım 4: Build Bekle
- GitHub repository → **Actions** sekmesi
- ~15 dakika sonra build biter
- **Artifacts** → `TClient-Windows-AvoidFeatures.zip` indir!

---

## Seçenek 2: Başkasına Build Ettir 👥

### Discord Topluluğu
1. TClient Discord: https://discord.gg/BgPSapKRkZ
2. Değişikliklerinizi paylaşın
3. Birisi build edip gönderebilir

### Freelancer Siteler
- Fiverr'da "Windows C++ build" araması
- ~$10-20 karşılığı build ettirin

---

## Seçenek 3: Cloud Build Servisleri ☁️

### AppVeyor (Ücretsiz)
1. https://ci.appveyor.com/signup
2. GitHub hesabı ile giriş
3. "New Project" → Repository'nizi seçin
4. Otomatik build başlar!

### CircleCI (Ücretsiz)
1. https://circleci.com/signup/
2. GitHub ile bağlan
3. Proje ekle → Build!

---

## Seçenek 4: Hazır Build'e Manuel Ekleme 🔧

### Gerekli Değişiklikler:

**1. Config dosyası (`settings_ddnet.cfg`):**
```
tc_avoid_hammers 0
tc_avoid_hammers_trigger 0
tc_avoid_freeze 0
tc_avoid_freeze_jump 1
```

**ANCAK** kodları derlemeden bu çalışmaz çünkü:
- ❌ Logic eklenmemiş olur
- ❌ Menü görünmez
- ❌ Özellikler çalışmaz

---

## 🎯 EN HIZLI ÇÖZÜM

### Online Build Service (5 dakika)

1. **Repl.it** kullanın:
   - https://replit.com/
   - "Create Repl" → "Import from GitHub"
   - Repository'nizi import edin
   - Shell'de: `bash build.sh` (sizin için yazacağım)

2. **Gitpod** kullanın:
   - https://gitpod.io/
   - GitHub repository URL'niz ile açın
   - Otomatik build!

---

## ⚡ SİZE ÖNERİM

**En kolay yol:** GitHub Actions

```powershell
# 1. Git yükle (5 dk)
# https://git-scm.com/download/win

# 2. GitHub hesabı aç (2 dk)
# https://github.com/signup

# 3. Push et (3 dk)
cd TClient-master
git init
git add .
git commit -m "Avoid features"
git remote add origin https://github.com/KULLANICI/TClient-Avoid.git
git push -u origin main

# 4. Actions'dan indir (15 dk build süresi)
# Repository → Actions → Artifact download
```

**Toplam süre:** ~25 dakika (15'i bekleme)
**Manuel iş:** ~10 dakika
**Maliyet:** ÜCRETSİZ! 🎉

---

## 🆘 Yardım İster misiniz?

1. **Discord:** https://discord.gg/BgPSapKRkZ
2. **GitHub Issues:** Kodu paylaşın, build isteyin
3. **TClient Community:** Birileri build edip verebilir

---

## 📝 NOT

Visual Studio indirmek **istemiyorsanız**:
- GitHub Actions en iyi seçenek
- Bulut servisleri build eder
- Community yardım edebilir

Build için local'de **MUTLAKA** gerekli:
- ✅ Visual Studio C++ tools
- ✅ CMake
- ✅ Git

Bunları yüklemek istemezseniz yukarıdaki cloud çözümler perfect! 🚀
