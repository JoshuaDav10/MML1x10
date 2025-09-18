# Agent 1 Instructions: Early Mapper

## Target Range
- **0x8001XXXX**: 52 unmapped functions
- **0x8002XXXX**: 91 unmapped functions
- **Total**: 143 functions to map

## Target List
See `agent1_targets.txt` for complete list of functions to map.

## Workflow
1. **Start with 0x8001XXXX range** (early functions)
2. **Map 5-10 functions** at a time
3. **Create C stubs** immediately after mapping
4. **Test build** after each batch
5. **Commit frequently** with descriptive messages
6. **Update progress** in `agent1_progress.log`

## Git Commands
```bash
# Before starting
git pull origin main
git checkout -b agent1-early-mapping

# After each batch (5-10 functions)
git add .
git commit -m "Agent 1: Map functions FUN_8001XXXX to FUN_8001YYYY"
git push origin agent1-early-mapping

# Test build
./venv/bin/python3 tools/splat/split.py config/splat.us.rock_neo.yaml
```

## Progress Tracking
- Update `agent1_progress.log` after each batch
- Format: "Batch X: Mapped FUN_8001XXXX to FUN_8001YYYY (5 functions)"
- Include any issues or questions

## Master Agent Coordination
- Check `master_coordination.log` for updates
- Report conflicts immediately
- Follow master agent guidance

## Priority Functions
Start with these high-priority functions:
- FUN_800167e
- FUN_8001696  
- FUN_80016cb
- FUN_80016d2
- FUN_80016e4

## Success Criteria
- Map all 143 target functions
- Maintain build stability
- Follow address order strictly
- Create proper C stubs
- Document any issues
