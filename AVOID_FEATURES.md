# TClient - Avoid Hammers & Avoid Freeze Features

Bu özellikler TClient'a eklenmiş otomatik kaçınma sistemleridir.

## Özellikler

### 1. Avoid Hammers (Çekiçlerden Kaçın)
Oyuncuları çekiç menzilinden otomatik olarak uzak tutar.

**Ayarlar:**
- `tc_avoid_hammers` (0/1) - Özelliği aktif/pasif eder
- `tc_avoid_hammers_trigger` (0/1/2) - Tetikleme modu:
  - **0**: Sadece sizi hooklayanlardan kaçar
  - **1**: Çekiç tutan herkesten kaçar (menzil içindeyse)
  - **2**: Çekiç mesafesindeki herkesten kaçar

**Nasıl Çalışır:**
- Çekiç menzilini (96 birim) + güvenli mesafeyi (32 birim) hesaplar
- Tehdit tespit edildiğinde otomatik olarak uzaklaşır
- Çok yakınsa otomatik zıplar

**Menü Konumu:**
`Settings → TClient → Combat → Avoid Hammers`

### 2. Avoid Freeze (Donmadan Kaçın)
Freeze tile'larından ve donmuş oyunculardan otomatik olarak kaçar.

**Ayarlar:**
- `tc_avoid_freeze` (0/1) - Özelliği aktif/pasif eder
- `tc_avoid_freeze_jump` (0/1) - Kaçınırken otomatik zıplamayı aktif eder

**Nasıl Çalışır:**
- İleri doğru 200 birim tarar
- Freeze, Deep Freeze, Live Freeze ve Death tile'larını tespit eder
- Hem game layer hem de front layer'ı kontrol eder
- Donmuş oyuncuları tespit eder ve onlardan uzak durur
- Tehlike tespit edildiğinde otomatik yön değiştirir

**Menü Konumu:**
`Settings → TClient → Combat → Avoid Freeze`

## Kullanım

1. Oyunu başlatın
2. `Settings` menüsüne gidin
3. `TClient` sekmesini açın
4. `Combat` sekmesine tıklayın
5. İstediğiniz özellikleri aktif edin ve ayarları yapın

## Teknik Detaylar

### Dosya Değişiklikleri:
- `src/engine/shared/config_variables_tclient.h` - Config değişkenleri
- `src/game/client/components/controls.cpp` - Ana logic
- `src/game/client/components/tclient/menus_tclient.cpp` - UI
- `src/game/client/components/menus.h` - Function declarations

### Önemli Notlar:
- Bu özellikler aimbot veya diğer combat özelliklerini engellemez
- Oyun akışını bozmadan çalışır
- Freeze kontrolü hem tile'ları hem de oyuncuları kontrol eder
- Performans dostu tasarım (sadece gerektiğinde çalışır)

## Console Komutları

```
tc_avoid_hammers 0/1              // Avoid Hammers açık/kapalı
tc_avoid_hammers_trigger 0/1/2    // Tetikleme modu
tc_avoid_freeze 0/1               // Avoid Freeze açık/kapalı
tc_avoid_freeze_jump 0/1          // Otomatik zıplama açık/kapalı
```

## Sorun Giderme

**Özellik çalışmıyor:**
- Config dosyasını kontrol edin (settings_ddnet.cfg)
- Ayarların doğru kaydedildiğinden emin olun
- Oyunu yeniden başlatın

**Çok hassas/agresif davranıyor:**
- Avoid Hammers için trigger mode'u 0'a çekin (sadece hooklayanlara karşı)
- Avoid Freeze için auto jump'ı kapatın

**Diğer özellikleri engelliyor:**
- Bu özellikler input direction ve jump'ı override eder
- Eğer manuel kontrol istiyorsanız özellikleri geçici olarak kapatın

## Katkıda Bulunanlar

Bu özellikler TClient projesine ekstra işlevsellik sağlamak için geliştirilmiştir.

## Lisans

TClient lisansı ile aynı - DDNet tabanlı açık kaynak proje
