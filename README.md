# IMS-Apex 🚀

**Version**: 0.1.1  
**Status**: Framework Setup  
**Last Updated**: December 25, 2025

### **The Architect Layer & Performance Engine**

IMS-Apex is a high-performance reasoning engine that adopts expert personas to solve complex problems. It serves as the definitive "Architect" layer for the IMS ecosystem, bridging the gap between informal prompts and Top 2% technical execution through recursive task decomposition.

---

## 🎯 Purpose

**Apex** sits above **IMS-Core**, transforming vague requirements into detailed technical specifications:

```
User: "Build the PCR component"
     ↓
Apex: Interrogates → Architects → Generates Specs
     ↓
Core: Implements from specs
```

---

## 🛠 Features

- **Documentation-First Protocol**: Mandatory architectural commitment before code generation
- **Recursive Task Decomposition**: Automatically breaks raw intent into hierarchical instruction sets
- **Mandatory Audit-Gate**: Integrated "LLM-as-a-Judge" protocol to ensure elite standards
- **YOLO Mode Ready**: Built for autonomous operation with `gemini-cli`
- **Integration Layer**: Direct sync with IMS-Core specs

---

## 🚀 The Protocol

1. **Interrogate**: The engine stops and asks high-value questions to uncover the root goal
2. **Architect**: Generates a full `SYSTEM_ARCHITECTURE.md` and directory map
3. **Execute**: Spawns specialized agents to fulfill narrow tasks with world-class precision
4. **Audit**: Final quality check before any code is committed

---

## 📂 Structure

See [FRAMEWORK_STRUCTURE.md](FRAMEWORK_STRUCTURE.md) for complete directory organization.

```
IMS-Apex/
├── AGENTS.md              # AI behavioral playbook
├── AUDIT_PROTOCOL.md      # Quality gates
├── RESEARCH_MANIFEST.md   # Research triggers
├── .agent/                # AI context directory
│   ├── spec/              # Requirements & design
│   └── tasks.md           # Task tracking
├── docs/
│   ├── specs/             # Generated specs
│   └── core-specs/        # → IMS-Core docs
└── scripts/               # Automation
```

---

## 🔗 Integration with IMS-Core

**Apex generates specs** → **Core implements them**

```bash
# Apex outputs to:
../ims-core/docs/ims/SPEC-EPIC-X.Y.md

# Apex reads from:
./docs/core-specs/ (symlink to Core)
```

---

## 🧪 Testing with Gemini 3 Pro

```bash
cd ~/projects/IMS-Apex
gemini-cli --model=gemini-3-pro-preview

# Test prompt:
"Read Epic 1.4 requirements from core-specs.
Generate technical architecture for PCR component."
```

---

## 📋 Quick Start

```bash
# Initialize framework
./scripts/init_framework.sh

# Verify structure
tree -L 2 -a

# Test integration
ls -l docs/core-specs  # Should show symlink to Core
```

---

## 📜 License

Apache 2.0 - See [LICENSE.md](LICENSE.md)

---

**Developed for the Stewardship AI Ecosystem**  
Part of the IMS (Intelligent Model Switching) platform