/*
 * Initialization function called by Ninja after "Init_Global" (G2) / "Init_<Levelname>" (G1)
 */
func void Ninja_SilentDiego_Init() {
    MEM_InitAll();
    
    // WRITE YOUR INITIALIZATIONS HERE
    Ninja_SilentDiego_HookDaedalusFunc_Init();
};
