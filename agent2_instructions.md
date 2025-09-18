# Agent 2 Instructions: Core Mapper

## Target Range
- **0x8003XXXX**: 203 unmapped functions
- **0x8004XXXX**: 232 unmapped functions
- **Total**: 435 functions to map

## Target List
See `agent2_targets.txt` for complete list of functions to map.

## Workflow
1. **Start with 0x8003XXXX range** (core systems)
2. **Map 5-10 functions** at a time
3. **Create C stubs** immediately after mapping
4. **Test build** after each batch
5. **Commit frequently** with descriptive messages
6. **Update progress** in `agent2_progress.log`

## Git Commands
```bash
# Before starting
git pull origin main
git checkout -b agent2-core-mapping

# After each batch (5-10 functions)
git add .
git commit -m "Agent 2: Map functions FUN_8003XXXX to FUN_8003YYYY"
git push origin agent2-core-mapping

# Test build
./venv/bin/python3 tools/splat/split.py config/splat.us.rock_neo.yaml
```

## Progress Tracking
- Update `agent2_progress.log` after each batch
- Format: "Batch X: Mapped FUN_8003XXXX to FUN_8003YYYY (5 functions)"
- Include any issues or questions

## Master Agent Coordination
- Check `master_coordination.log` for updates
- Report conflicts immediately
- Follow master agent guidance

## Priority Functions
Start with these high-priority functions:
- FUN_800302c
- FUN_800302f
- FUN_800305b
- FUN_800305e
- FUN_800307a

## Success Criteria
- Map all 435 target functions
- Maintain build stability
- Follow address order strictly
- Create proper C stubs
- Document any issues
