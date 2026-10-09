# GitHub ile Otomatik Build Rehberi

## 🚀 Adımlar

### 1. GitHub Hesabı Oluşturun (Ücretsiz)
- https://github.com/signup

### 2. Yeni Repository Oluşturun
```
1. GitHub'a giriş yapın
2. Sağ üst köşe → "+" → "New repository"
3. Repository name: "TClient-Avoid"
4. Public seçin (ücretsiz Actions için)
5. "Create repository"
```

### 3. Kodları Yükleyin

**PowerShell'de:**
```powershell
cd "c:\Users\death\OneDrive\Desktop\TClient-master"

# Git init (eğer yoksa)
git init

# Dosyaları ekle
git add .
git commit -m "Added Avoid Hammers and Avoid Freeze features"

# GitHub'a bağla (YOUR_USERNAME yerine kullanıcı adınız)
git remote add origin https://github.com/YOUR_USERNAME/TClient-Avoid.git

# Push et
git branch -M main
git push -u origin main
```

### 4. Actions Build'i Bekleyin

```
1. GitHub repository sayfanıza gidin
2. "Actions" sekmesine tıklayın
3. "Custom Build - Avoid Features" workflow'unu göreceksiniz
4. Build tamamlanınca (yeşil ✓)
5. Artifact'e tıklayıp TClient.exe indirin!
```

### 5. Build'i İndirin

```
Actions → En son workflow → "TClient-Windows-AvoidFeatures" artifact
└── ZIP indir
    └── TClient.exe + Dökümanlar
```

## ⏱️ Build Süresi
- İlk build: ~15-20 dakika
- Sonraki buildler: ~10 dakika

## 💡 İpuçları

- **Kodunuzu güncelledikçe** push edin, otomatik build olur
- **Her commit** yeni bir build tetikler
- **Artifact'ler 90 gün** saklanır

## 🔐 Private Repository için
- Settings → Actions → General
- "Allow all actions" seçin
- Free tier: 2000 dakika/ay

---

## Alternatif: GitHub Token ile Push

Eğer klasik git komutları çalışmazsa:

```powershell
# Personal Access Token oluşturun:
# GitHub → Settings → Developer settings → Personal access tokens → Generate new token
# "repo" scope'unu seçin

# Token ile push:
git remote set-url origin https://YOUR_TOKEN@github.com/YOUR_USERNAME/TClient-Avoid.git
git push -u origin main
```

