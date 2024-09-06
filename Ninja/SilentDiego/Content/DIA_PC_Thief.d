// Start the first dialogue only, when Diego is in ZS_Talk, so when player clicked him.
func int Ninja_SilentDiego_Info_Diego_Gamestart_Condition()
{
    if (MEM_FindParserSymbol("ZS_TALK") != -1) {
        // Push any necessary arguments onto the stack in the order of the function's parameters
        MEM_PushInstParam(self);
        MEM_PushIntParam(MEM_FindParserSymbol("ZS_TALK"));
        
        // Call the function in a safe way
        MEM_CallByString("NPC_ISINSTATE");
        
        // Use the returned value
        return MEM_PopIntResult();
    } else {
        // Optionally provide a fallback if the function does not exist
        return true;
    };
};
