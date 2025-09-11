# Reference Documentation
## Complete Knowledge Base for Mega Man Legends Decompilation

*This directory contains all reference materials, organized for maximum efficiency and knowledge compounding*

---

## **📋 Directory Structure**

```
reference/
├── README.md                           # This file - overview and navigation
├── meta_strategy.md                    # Strategic brain - our decompilation philosophy
├── patterns/                           # MIPS and function pattern references
│   ├── mips_patterns.md               # Common MIPS instruction patterns
│   ├── state_machines.md              # State machine analysis and patterns
│   ├── function_archetypes.md         # Function type templates (future)
│   └── hardware_access.md             # PSX hardware interaction patterns (future)
├── functions/                          # Function analysis and progress tracking
│   ├── analyzed_functions.md          # Complete database of analyzed functions
│   ├── dependency_graph.md            # Function call relationships (future)
│   └── complexity_scores.md           # Function difficulty assessment (future)
├── tools/                              # Tool documentation and usage guides
│   ├── splat_configuration.md         # Splat configuration reference
│   ├── knowledge_engine.md            # Knowledge management system (future)
│   ├── complexity_predictor.md        # Function difficulty prediction (future)
│   └── dependency_resolver.md         # Dependency resolution tools (future)
├── lessons_learned/                    # Success patterns and failure analysis
│   ├── success_patterns.md            # What works and why
│   ├── failure_analysis.md            # What doesn't work and how to prevent it
│   └── strategy_evolution.md          # How our approach has evolved (future)
├── psx_docs/                          # PSX hardware and system documentation
│   ├── Software/                      # Software development references
│   │   ├── mips/                     # MIPS instruction set references
│   │   └── psyq/                     # PSYQ development library documentation
│   └── Hardware/                      # Hardware specifications (future)
├── padua_psx_docs/                    # Low-level PlayStation assembly documentation
│   ├── SYSTEM.txt                     # R3000 instructions, system calls, DMA
│   ├── GPU.txt                        # GPU operations and frame buffer
│   ├── GTE.txt                        # 3D math and transformations
│   ├── SPU.txt                        # Sound Processing Unit
│   ├── CDINFO.txt                     # CD-ROM operations
│   └── README.md                      # Documentation overview
├── drhell_psx_research/               # PlayStation hardware research (Japanese)
│   ├── main_page.txt                  # Complete hardware documentation
│   ├── xebra_guide.txt                # XEBRA emulator documentation
│   ├── main_page.html                 # Original HTML source
│   ├── xebra_guide.html               # Original HTML source
│   └── README.md                      # Documentation overview
├── mml_specific_docs/                 # MML-specific documentation and tools
│   ├── chrisnonyminus_mml1/           # MML decompilation project
│   ├── dash_editor/                   # MML file format tools
│   └── README.md                      # Documentation overview
└── reverse_engineering/                # Project-specific reverse engineering notes
    └── mml_specific/                  # Mega Man Legends specific findings
        ├── project_plan.md            # Original project planning document
        └── README.md                  # Game-specific research overview
```

---

## **🎯 How to Use This Reference System**

### **For New Team Members**
1. **Start with `meta_strategy.md`** - Understand our overall approach
2. **Read `success_patterns.md`** - Learn what works and what doesn't
3. **Study `mips_patterns.md`** - Learn MIPS instruction patterns
4. **Review `analyzed_functions.md`** - See what we've already accomplished
5. **Use `splat_configuration.md`** - Learn how to extract functions

### **For Daily Work**
1. **Reference `meta_strategy.md`** - Ensure actions align with our strategy
2. **Update `analyzed_functions.md`** - Document new function analysis
3. **Add to `mips_patterns.md`** - Document new MIPS patterns discovered
4. **Update `success_patterns.md`** - Document what worked and what didn't
5. **Check `splat_configuration.md`** - Reference configuration patterns

### **For Strategic Planning**
1. **Review `meta_strategy.md`** - Assess current strategy effectiveness
2. **Analyze `lessons_learned/`** - Identify improvement opportunities
3. **Plan with `analyzed_functions.md`** - Identify next targets
4. **Update `meta_strategy.md`** - Refine strategy based on results

---

## **🧠 Knowledge Compounding System**

### **How Knowledge Compounds**
Each function we analyze makes the next one easier because:
- **Pattern Recognition**: We identify common MIPS patterns
- **Template Creation**: We create reusable C code templates
- **Dependency Mapping**: We understand function relationships
- **Tool Improvement**: Our automation tools get better

### **Update Protocols**
- **Real-time Updates**: Document during analysis
- **Weekly Reviews**: Assess strategy effectiveness
- **Monthly Evolution**: Plan major improvements
- **Quarterly Revolution**: Overhaul approach if needed

---

## **📊 Progress Tracking**

### **Current Status**
- **Overall Progress**: 8-10% complete
- **Functions Extracted**: 11
- **Functions Decompiled**: 2
- **Pattern Database**: Growing
- **Tool Automation**: Improving

### **Efficiency Metrics**
- **Week 1**: 1x efficiency (baseline)
- **Week 2**: 3x efficiency (target)
- **Week 3**: 15x efficiency (target)
- **Week 4**: 105x efficiency (target)

### **Success Criteria**
- **Short-term (4 weeks)**: 5x efficiency improvement
- **Medium-term (3 months)**: 10x efficiency improvement
- **Long-term (6 months)**: 20x efficiency improvement

---

## **🔍 Pattern Recognition System**

### **MIPS Patterns**
- **Function Prologues**: Standard MIPS entry/exit patterns
- **Global Variables**: `lui` + `lw`/`lh`/`lb` access patterns
- **Control Flow**: Branch, jump, and loop patterns
- **Hardware Access**: PSX-specific register access patterns

### **Function Archetypes**
- **Simple Functions**: < 100 lines, single responsibility
- **Medium Functions**: 100-300 lines, multiple responsibilities
- **Complex Functions**: 300-500 lines, state machines, jump tables
- **Extreme Functions**: 500+ lines, nested state machines

### **State Machine Patterns**
- **Primary State Machines**: Overall function control
- **Secondary State Machines**: Specific operation management
- **Tertiary State Machines**: Data processing and hardware interaction

---

## **🛠️ Tool Documentation**

### **Automation Tools**
- **fix_splat_names.py**: Fixes D_ vs func_ symbol mismatches
- **find_boundaries.py**: Finds function boundaries in assembly
- **Pattern Recognition Scripts**: Identify common MIPS patterns (future)
- **Template Generation**: Create C code templates (future)

### **Configuration Tools**
- **Splat Configuration**: Function extraction and segmentation
- **Build System**: Compilation and linking
- **Validation Tools**: Prevent configuration errors (future)
- **Progress Tracking**: Monitor efficiency improvements (future)

---

## **📚 Learning Resources**

### **For MIPS Assembly**
- **mips_patterns.md**: Common instruction patterns
- **state_machines.md**: Complex control flow analysis
- **PSX Documentation**: Hardware-specific knowledge

### **For PSX Development**
- **Hardware Documentation**: CPU, GPU, SPU specifications
- **Software Libraries**: PsyQ, system calls, BIOS functions
- **Development Tools**: Assemblers, compilers, debuggers

### **For Reverse Engineering**
- **Success Patterns**: What works and why
- **Failure Analysis**: What doesn't work and how to prevent it
- **Strategy Evolution**: How our approach improves over time

---

## **🚀 Future Development**

### **Immediate (Next 2 weeks)**
- **Pattern Database Expansion**: Add more MIPS patterns
- **Template System**: Create C code templates
- **Tool Improvement**: Enhance automation tools
- **Documentation Updates**: Keep all references current

### **Medium-term (Next month)**
- **Knowledge Engine**: Centralized knowledge management
- **Complexity Predictor**: Assess function difficulty
- **Dependency Resolver**: Map function relationships
- **Progress Visualization**: Track efficiency improvements

### **Long-term (Next 3 months)**
- **Machine Learning**: Automated pattern recognition
- **Community Integration**: Share knowledge with other projects
- **Industry Methodology**: Establish best practices
- **Automated Decompilation**: 90% automation target

---

## **📝 Maintenance and Updates**

### **Update Frequency**
- **Real-time**: During function analysis
- **Daily**: After each work session
- **Weekly**: Strategy review and planning
- **Monthly**: Major documentation updates

### **Quality Control**
- **Accuracy**: All information must be verified
- **Completeness**: Document everything learned
- **Clarity**: Write for future team members
- **Consistency**: Follow established formats

### **Version Control**
- **Git Integration**: Track all documentation changes
- **Change Logs**: Document what changed and why
- **Review Process**: Validate updates before committing
- **Backup Strategy**: Ensure knowledge preservation

---

## **🎯 Success Metrics**

### **Knowledge Accumulation**
- **Pattern Database Size**: Number of documented patterns
- **Template Library**: Number of reusable templates
- **Function Coverage**: Percentage of functions analyzed
- **Documentation Completeness**: Coverage of all topics

### **Efficiency Improvement**
- **Functions per Hour**: Extraction rate improvement
- **Error Reduction**: Build failure prevention
- **Tool Effectiveness**: Automation success rate
- **Learning Curve**: Time to contribute for new members

### **Quality Metrics**
- **Build Stability**: Success rate of builds
- **Code Quality**: Accuracy of C implementations
- **Documentation Quality**: Clarity and completeness
- **Tool Reliability**: Automation tool success rate

---

## **💡 Best Practices**

### **Documentation**
- **Write for Others**: Assume someone else will read this
- **Be Specific**: Include concrete examples and code
- **Update Regularly**: Keep information current
- **Cross-reference**: Link related documents

### **Analysis**
- **Start Small**: Begin with simple functions
- **Test Incrementally**: Verify each change
- **Document Patterns**: Record everything learned
- **Learn from Failures**: Analyze what went wrong

### **Tool Usage**
- **Automate Repetitive Tasks**: Build tools for common operations
- **Validate Inputs**: Check configurations before running
- **Test Tools**: Verify tool output accuracy
- **Improve Continuously**: Enhance tools based on usage

---

## **📞 Getting Help**

### **When You're Stuck**
1. **Check the Documentation**: Look for relevant patterns
2. **Review Success Patterns**: See how similar problems were solved
3. **Check Failure Analysis**: Avoid repeating known mistakes
4. **Update the Knowledge Base**: Document what you learned

### **When You Find Something New**
1. **Document the Pattern**: Add to appropriate reference
2. **Create Templates**: Make it reusable for others
3. **Update Related Documents**: Keep everything in sync
4. **Share with the Team**: Help others learn from your discovery

---

## **📝 UPDATE LOG**

- **Created**: Current session - Initial reference system organization
- **Last Updated**: Current session
- **Next Review**: End of Week 1
- **Update Frequency**: Real-time during analysis, weekly for strategy review

---

**This reference system is our collective brain. Use it, contribute to it, and help it grow. Every piece of knowledge documented here makes the next function easier to analyze.**
