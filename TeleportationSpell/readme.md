# Teleportation spell

传送法术。第一次施放法术传送到某地，第二次施放传送回原地点。

# Creation Kit 中的设置

- 创建一个任务(Quest) vaVarStorageQuest

- vaVarStorageQuest 加入脚本 vaVarStorageScript.psc ，属性可以不管

- 创建一个法术效果(magic effect)， 其中脚本加入 vaTeleportationScript.psc

- 其中属性填 目的地的marker，以及vaVarStorageQuest

- 创建一个法术(spell), 设为这个法术效果。

# 兼容性

- ✔ Skyrim
- ✔ Fallout 4
- ✔ Skyrim Special Edition
