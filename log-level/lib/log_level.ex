defmodule LogLevel do
  def to_label(0, true), do: :unknown
  def to_label(0, false), do: :trace
  def to_label(1, false), do: :debug
  def to_label(1, true), do: :debug
  def to_label(2, false), do: :info
  def to_label(2, true), do: :info
  def to_label(3, false), do: :warning
  def to_label(3, true), do: :warning
  def to_label(4, false), do: :error
  def to_label(4, true), do: :error
  def to_label(5, false), do: :fatal
  def to_label(5, true), do: :unknown
  def to_label(6, false), do: :unknown
  def to_label(6, true), do: :unknown
  def to_label(-1, true), do: :unknown
  def to_label(-1, false), do: :unknown

  def alert_recipient(level, legacy?) do
    l = to_label(level, legacy?)
    printLog(l, legacy?)
  end

  def printLog(:error, _), do: :ops
  def printLog(:fatal, _), do: :ops
  def printLog(:unknown, true), do: :dev1
  def printLog(:unknown, false), do: :dev2

  def printLog(_, _) do
    false
  end

  # def alert_recipient(:error, _legacy?) do
  #   :ops
  # end

  # def alert_recipient(:fatal, _legacy?) do
  #   :ops
  # end

  # def alert_recipient(:unknown, true) do
  #   :dev1
  # end

  # def alert_recipient(:unknown, false) do
  #   :dev2
  # end
end
