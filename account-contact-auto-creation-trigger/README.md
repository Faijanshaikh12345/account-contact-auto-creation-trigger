# Account – Contact Auto Creation Trigger

## 📌 Overview
This Salesforce Apex Trigger automatically creates a Contact whenever a new Account is inserted.  
It demonstrates **Trigger Best Practices** by using a separate handler class.

---

## ⚙️ Files
- `AccountTrigger.trigger` → Trigger file  
- `AccountHandler.cls` → Handler class with logic  

---

## 🚀 How It Works
1. A user creates a new **Account**.  
2. The trigger runs in `after insert` context.  
3. A related **Contact** is automatically created with:  
   - LastName = `Account Name + Contact`  
   - Email = Unique email generated from Account Name + Id  
   - Phone = Same as Account Phone  

---

## ✅ Example
- Account created: **Faijan Shaikh** with Phone `1234567890`  
- Trigger creates Contact:  
  - LastName: `Faijan Shaikh Contact`  
  - Email: `faijanshaikh@gmail.com`  
  - Phone: `1234567890`
