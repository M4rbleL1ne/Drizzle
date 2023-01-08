using System;

namespace Drizzle.Lingo.Runtime;

public sealed partial class LingoGlobal
{
    public System _system { get; private set; } = default!;

    public sealed class System
    {
        private readonly LingoGlobal _global;

        public System(LingoGlobal global)
        {
            _global = global;
        }

        public LingoNumber milliseconds => (int)_global.LingoRuntime.Stopwatch.ElapsedMilliseconds;

        // used to set window size so we shouldn't care about it
        public LingoPoint desktoprectlist => default;
    }
}
