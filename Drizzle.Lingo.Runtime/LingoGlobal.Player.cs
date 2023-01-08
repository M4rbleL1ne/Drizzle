namespace Drizzle.Lingo.Runtime;

public sealed partial class LingoGlobal
{
    public Player _player { get; private set; } = default!;

    public sealed class Player
    {
        private readonly LingoGlobal _global;

        public Player(LingoGlobal global)
        {
            _global = global;
        }

        public void appminimize()
        {
            // nothing
        }

        public void quit()
        {
            // nothing
        }
    }
}
